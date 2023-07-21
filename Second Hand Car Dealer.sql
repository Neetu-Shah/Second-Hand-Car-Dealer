Create schema cars;
use cars;

-- To Read cars data
Select * from car_dekho;

-- To get a count of toal cars
select count(*) from car_dekho;

-- No. of cars available in 2023 
select count(*) from car_dekho where year=2023;

-- No. of cars available in 2020,2021,2022 
select count(*) from car_dekho where year=2020 or year=2021 or year=2022;

-- or another way of above question (No. of cars available in 2020,2021,2022) 
select year, count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- show the all details of total no. of cars by year 
select year, count(*) from car_dekho group by year;

-- How many diesel cars are available in 2020 
select count(*) from car_dekho where fuel='diesel' and year=2020 ;

-- How many petrol cars are available in 2020 
select count(*) from car_dekho where fuel='petrol' and year=2020 ;

-- all the fuel cars for all year 
select year, count(*) from car_dekho where fuel='petrol' group by year ;
select year, count(*) from car_dekho where fuel='diesel' group by year ;

-- Which all years had more than 100 cars 
select year, count(*) from car_dekho group by year having count(*)>100;

-- all cars count between 2015 and 2023 
select count(*) from car_dekho where year between 2015 and 2023;

-- all cars between 2015 and 2023 
select * from car_dekho where year between 2015 and 2023;

-- End








