create type sex as ENUM ('male', 'female', 'other');

create table users (
                       id                        SERIAL PRIMARY KEY,
                       lastname    varchar(255)  NOT NULL,
                       firstname   varchar(255)  NOT NULL,
                       dateofbirth date          NOT NULL,
                       email       varchar(255)  NOT NULL,
                       phone       varchar(13)   NOT NULL,
                       gender        sex         DEFAULT 'male',
                       timezone    varchar(15)   NOT NULL,
                       timeofregistration timestamp,
                       ip_address  cidr   NOT NULL,
                       UNIQUE ( lastname, firstname )
);

insert into users (lastname, firstname, dateofbirth, email, phone, gender, timezone, timeofregistration, ip_address)
values ('Green', 'Rachel', '1967-02-07', 'aniston@gmail.com', '+1345678927','female', 'UTC+7',
        '2022-06-29 18:50:15.000000', '198.172.10.02 ');

