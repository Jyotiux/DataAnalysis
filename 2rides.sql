Create Database Rides;
Use Rides;

select * from bookings;

#1. Retrieve all successful Bookings.
Create View Successful_Bookings As
select * from bookings
where Booking_Status = 'Success';

#2 Find average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select vehicle_type , avg(ride_distance)
as avg_dis from bookings
group by vehicle_type;

#3 get the total no. of cancelled rides by customers:
select count(*) as num from bookings 
where Booking_Status='Canceled by Customer';

#4 List top 5 customers who booked the highest number of rides
create view top_5_customers as
select Customer_ID,count(Booking_ID) as total_rides from bookings group by 
Customer_ID order by total_rides desc limit 5;

#5 Get the number of rides cancelled by drivers due to personal and car related issues.
select count(*) as num from bookings
where Canceled_Rides_by_Driver='Personal & Car related issue';

#6 Find the max and min driver ratings for Prime Sedan bookings:
select max(driver_ratings) as maxi, min(driver_ratings) as mini
from bookings where Vehicle_Type='Prime Sedan';

#7 Retrieve all rides where payment was made using UPI:
Create view UPI_Payment as
select * from bookings
where payment_method='UPI';

#8 Average customer rating per vehicle type:
Create view avg_rating as
select vehicle_type,avg(Customer_Rating) as avg_rating from bookings
group by Vehicle_Type;

#9 calculate total booking value of rides completed successfully
Create view total_successful_rides as
select sum(booking_value) as total_successful_rides
from bookings where Booking_Status='success';

#10 List all incomplete rides with reason
Create view incomplete_rides as
select booking_id, incomplete_rides_reason
from bookings
where incomplete_rides='Yes';

#1. Retrieve all successful Bookings.
select * from successful_bookings;
#2 Find average ride distance for each vehicle type:
select * from ride_distance_for_each_vehicle;
#4 List top 5 customers who booked the highest number of rides
select * from top_5_customers;
#7 Retrieve all rides where payment was made using UPI:
select * from UPI_Payment;
#8 Average customer rating per vehicle type:
select * from avg_rating;
#9 calculate total booking value of rides completed successfully
select * from total_successful_rides;
#10 List all incomplete rides with reason
select * from incomplete_rides;
