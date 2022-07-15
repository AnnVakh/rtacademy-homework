create table users (
    id          int           AUTO_INCREMENT,
    lastname    varchar(255)  NOT NULL,
    firstname   varchar(255)  NOT NULL,
    dateofbirth date          NOT NULL,
    email       varchar(255)  NOT NULL,
    phone       varchar(13)   NOT NULL,
    gender ENUM('male', 'female', 'other') DEFAULT 'male',
    timezone    varchar(15)   NOT NULL,
    timeofregistration timestamp,
    ip_address  varchar(15)   NOT NULL,
    PRIMARY KEY (id),
    CHECK ( dateofbirth >=0 AND dateofbirth <10 )
);

insert into users (lastname, firstname, dateofbirth, email, phone, gender, timezone, timeofregistration, ip_address)
values ('Green', 'Rachel', '1967-02-07', 'aniston@gmail.com', '+1345678927', 'female', 'UTC+7',
        '2022-06-29 18:50:15.000000', '198.172.10.02 ');