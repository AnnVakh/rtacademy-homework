create table users (
       id      int,
       lastname  varchar(255),
       firstname varchar(255),
       dateofbirth  date,
       email varchar(255),
       phone varchar(13),
       gender ENUM('male', 'female', 'other'),
       timezone varchar(15),
       timeofregistration timestamp,
       ipadress varchar(255)
);