SELECT w.name, w.surname 
FROM Waiters w 
JOIN Bills b ON w.waiter_id = b.waiter_id 
JOIN Customers c ON b.customer_id = c.customer_id 
WHERE c.name = 'Tanya' AND c.surname = 'Singh';


SELECT b.date 
FROM Rooms r 
JOIN Headwaiters h ON r.headwaiter_id = h.headwaiter_id 
JOIN Bills b ON r.room_id = b.room_id 
WHERE h.name = 'Charles' AND r.name = 'Green' 
AND b.date LIKE '2016-02%';

SELECT w.name, w.surname 
FROM Waiters w 
JOIN Headwaiters h ON w.headwaiter_id = h.headwaiter_id 
WHERE h.headwaiter_id = (
    SELECT h.headwaiter_id 
    FROM Waiters w 
    JOIN Headwaiters h ON w.headwaiter_id = h.headwaiter_id 
    WHERE w.name = 'Zoe' AND w.surname = 'Ball'
);

SELECT c.name AS customer_name, b.amount AS amount_spent, w.name AS waiter_name 
FROM Customers c 
JOIN Bills b ON c.customer_id = b.customer_id 
JOIN Waiters w ON b.waiter_id = w.waiter_id 
ORDER BY b.amount DESC;

SELECT DISTINCT w.name, w.surname 
FROM Waiters w 
JOIN Teams t ON w.team_id = t.team_id 
JOIN Bills b ON t.team_id = b.team_id 
WHERE b.bill_number IN ('00014', '00017');


SELECT DISTINCT w.name, w.surname 
FROM Waiters w 
JOIN Rooms r ON w.room_id = r.room_id 
JOIN Bills b ON r.room_id = b.room_id 
WHERE r.name = 'Blue' AND b.date = '160312'

UNION

SELECT h.name, h.surname 
FROM Headwaiters h 
JOIN Rooms r ON h.headwaiter_id = r.headwaiter_id 
JOIN Bills b ON r.room_id = b.room_id 
WHERE r.name = 'Blue' AND b.date = '160312';
