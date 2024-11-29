
SELECT DISTINCT c.name, c.surname 
FROM Customers c 
JOIN Bills b ON c.customer_id = b.customer_id 
JOIN Rooms r ON b.room_id = r.room_id 
JOIN Headwaiters h ON r.headwaiter_id = h.headwaiter_id 
WHERE b.amount > 450.00 AND h.name = 'Charles';

SELECT h.name, h.surname 
FROM Headwaiters h 
JOIN Rooms r ON h.headwaiter_id = r.headwaiter_id 
JOIN Bills b ON r.room_id = b.room_id 
JOIN Customers c ON b.customer_id = c.customer_id 
WHERE c.name = 'Nerida' AND b.date = '2016-01-11';


SELECT c.name, c.surname 
FROM Customers c 
JOIN Bills b ON c.customer_id = b.customer_id 
WHERE b.amount = (
    SELECT MIN(amount) 
    FROM Bills
);

SELECT w.name, w.surname 
FROM Waiters w 
WHERE w.waiter_id NOT IN (
    SELECT DISTINCT waiter_id 
    FROM Bills
);

SELECT c.name AS customer_name, c.surname AS customer_surname, 
       h.name AS headwaiter_name, h.surname AS headwaiter_surname, 
       r.name AS room_name 
FROM Customers c 
JOIN Bills b ON c.customer_id = b.customer_id 
JOIN Rooms r ON b.room_id = r.room_id 
JOIN Headwaiters h ON r.headwaiter_id = h.headwaiter_id 
WHERE b.amount = (
    SELECT MAX(amount) 
    FROM Bills
);
