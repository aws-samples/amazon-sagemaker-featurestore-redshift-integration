create table sagemakerdemo.dim_user

( 
  userid varchar, 
  user_latitude double precision, 
  user_longitude double precision, 
  user_smoker boolean, 
  user_drink_level varchar, 
  user_dress_preference varchar, 
  user_ambience varchar, 
  user_transport varchar, 
  user_marital_status varchar, 
  user_hijos varchar, 
  user_birth_year bigint, 
  user_interest varchar, 
  user_personality varchar, 
  user_religion varchar, 
  user_activity varchar, 
  user_color varchar, 
  user_weight bigint, 
  user_budget varchar, 
  user_height bigint, 
  user_cuisine varchar(4000), 
  user_payment varchar, 
  timestamp timestamp
);




create table sagemakerdemo.dim_place
( 
  placeid bigint, 
  place_latitude double precision, 
  place_longitude double precision, 
  place_name varchar, 
  place_address varchar, 
  place_city varchar, 
  place_state varchar, 
  place_country varchar, 
  place_zip varchar, 
  place_alcohol varchar, 
  place_smoking_area varchar, 
  place_dress_code varchar, 
  place_accessibility varchar, 
  place_price varchar, 
  place_ambience varchar, 
  place_franchise varchar, 
  place_area varchar, 
  place_other_services varchar, 
  place_cuisine varchar, 
  place_payment varchar, 
  place_parking_lot varchar, 
  timestamp timestamp
);




create table sagemakerdemo.fact_rating
( 
  ratingid bigint, 
  userid varchar, 
  placeid bigint, 
  rating_overall bigint, 
  rating_food bigint, 
  rating_service bigint, 
  timestamp timestamp
 );
