create type sex as ENUM ('male', 'femail', 'other');

CREATE TABLE users (
                       id      int,
                       lastname  varchar(255),
                       firstname varchar(255),
                       dateofbirth  date,
                       email varchar(255),
                       phone varchar(13),
                       gender sex,
                       timezone varchar(15),
                       timeofregistration timestamp,
                       ipadress cidr
);