Create database Ola;
use Ola;
#Q1
create View Successful_bookings as
select *from bookings
where Booking_Status='Success';


#Q2
create view ride_distance_for_each_vehicle as
select Vehicle_Type,avg(Ride_Distance) as avg_distance from bookings
group by Vehicle_type;

#Q3
create view cancelled_rides_by_customers as
select count(*) from bookings
where Booking_Status='Canceled by Customer';

#Q4
Create View Top_5_Customers As
select Customer_ID, count(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;


#Q5
Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

#Q6
Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings where Vehicle_Type = 'Prime Sedan';

#Q7
Create View UPI_Payment As
SELECT * FROM bookings
where Payment_Method = 'UPI';

#Q8
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

#Q9
Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bookings
where Booking_Status = 'Success';

#Q10
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
where Incomplete_Rides = 'Yes';


#1. Retrieve all successful bookings:
Select * From Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Rides_cancelled_by_Drivers_P_C_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Select * from UPI_Payment;

#8. Find the average customer rating per vehicle type:
Select * from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
Select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Select * from Incomplete_Rides_Reason;