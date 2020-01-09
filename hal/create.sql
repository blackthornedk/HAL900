begin transaction;

create language 'plpgsql';

CREATE OR REPLACE FUNCTION update_updated()
	RETURNS TRIGGER AS $$
	BEGIN
	   NEW.updated = now(); 
	   RETURN NEW;
	END;
$$ language 'plpgsql';


create table memberType (
       id integer primary key, 	
       created timestamp default now(),
       updated timestamp default now(),

       memberType varchar(50),
       monthlyFee numeric(10,2),
       userPick boolean,

       doorAccess boolean
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON memberType FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();


insert into memberType (id, memberType, monthlyFee, doorAccess) 
       values (1, 'Betalende medlem', 150, true);
insert into memberType (id, memberType, monthlyFee, doorAccess) 
       values (2, 'Gratis-medlem', 0, false);

create table member (
       id serial primary key, 	
       created timestamp default now(),
       updated timestamp default now(),

       membertype_id integer references membertype(id),

       username varchar(50) unique,
       email varchar(50) unique,
       passwd varchar(100), /* sha256 - reverse that! */

       phone varchar(20),
       realname varchar(50),
       smail varchar(150),

       lastNagMail timestamp,
       lastRFIDMail timestamp,

       doorAccess boolean,  
       adminAccess boolean /* Admin access via the web interface */
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON member FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();

create table accountType (
       id integer primary key,
       created timestamp default now(),
       updated timestamp default now(),

       typeName varchar(50)
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON accountType FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();

insert into accountType (id, typeName) 
       values (1, 'Bank kontoen');
insert into accountType (id, typeName) 
       values (2, 'Kontingent og køb');
insert into accountType (id, typeName) 
       values (3, 'Lån');
insert into accountType (id, typeName) 
       values (4, 'Andre konti');

create table account (
       id serial primary key,
       created timestamp default now(),
       updated timestamp default now(),

       owner_id integer references member(id),
       type_id integer references accountType(id) not null,
       warningLevel numeric(10,2),
       
       accountName varchar(50)
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON account FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();

insert into account (type_id, accountName) values (1, 'OSAAs bankkonto i Nordea');
insert into account (type_id, id, accountName) values (4, 100001, 'OSAA kontingent');

create table accountTransaction (
       id serial primary key,
       created timestamp default now(),
       updated timestamp default now(),

       source_account_id integer not null references account(id),
       target_account_id integer not null references account(id),
       check (source_account_id <> target_account_id),

       amount numeric(10,2) check (amount > 0),
       receiptSent timestamp,

	   operator_id integer references member(id),

       comment varchar(150)
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON accountTransaction FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();


create table bankBatch (
       id serial primary key,
       created timestamp default now(),
       updated timestamp default now(),

       rawCsv varchar
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON bankBatch FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();

create table bankTransaction (
       id serial primary key,
       created timestamp default now(),
       updated timestamp default now(),

       bankBatch_id integer references bankBatch(id) not null,
       
       bankDate varchar(15) not null,
       bankComment varchar(100) not null,
       amount numeric(10,2) not null,
       bankSum numeric(10,2) not null,

       transaction_id integer references accountTransaction(id),
       userComment varchar(100),

       unique (bankDate, bankComment, amount, bankSum)
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON bankTransaction FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();

create table webSession (
       id varchar(20) primary key,
       created timestamp default now(),
       updated timestamp default now(),

       dataBlob varchar
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON webSession FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();

create table rfid (
       id serial primary key,
       created timestamp default now(),
       updated timestamp default now(),

       rfid integer unique not null,
       owner_id integer references member(id) not null,
       pin bigint,
       lost boolean not null default false,
);

create table doorTransaction (
       id serial primary key,
       created timestamp default now(),
       updated timestamp default now(),

       rfid_id integer references rfid(id) on delete set null,

       hash bigint not null, 
       kind char(1) not null
);

commit;


begin;

alter table membertype add column userPick boolean default true not null;

commit;


begin;

create table space_option (
       id serial primary key,
       created timestamp default now(),
       updated timestamp default now(),

       title varchar unique not null,
       uri varchar unique not null,
       description varchar not null
);
CREATE TRIGGER update_updated BEFORE UPDATE
        ON space_option FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();

create table space_option_eval (
       created timestamp default now(),
       updated timestamp default now(),
 
       member_id integer references member(id),
       space_option_id integer references space_option(id),
       
       points integer not null,
       comment varchar not null,

       primary key (member_id, space_option_id)
);

CREATE TRIGGER update_updated BEFORE UPDATE
        ON space_option_eval FOR EACH ROW EXECUTE PROCEDURE 
        update_updated();
commit;


begin;
alter table space_option add column budget int not null default 12000;
commit;

begin;
update space_option set budget=313*450/12 where id=1;
update space_option set budget=313*225/12 where id=2;

commit;
