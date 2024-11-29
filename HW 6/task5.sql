
SELECT 
    w.name AS waiter_name, 
    w.surname AS waiter_surname, 
    b.bill_date, 
    COUNT(b.bill_id) AS bill_count
FROM 
    Bill b
JOIN 
    Waiter w ON b.waiter_id = w.waiter_id
GROUP BY 
    w.name, w.surname, b.bill_date
HAVING 
    COUNT(b.bill_id) >= 2;


SELECT 
    r.room_name, 
    COUNT(t.table_id) AS large_table_count
FROM 
    Room r
JOIN 
    Table t ON r.room_id = t.room_id
WHERE 
    t.capacity > 6
GROUP BY 
    r.room_name;


SELECT 
    r.room_name, 
    SUM(b.amount) AS total_bills
FROM 
    Bill b
JOIN 
    Room r ON b.room_id = r.room_id
GROUP BY 
    r.room_name;

SELECT 
    hw.name AS headwaiter_name, 
    hw.surname AS headwaiter_surname, 
    SUM(b.amount) AS total_bill_amount
FROM 
    HeadWaiter hw
JOIN 
    Waiter w ON hw.headwaiter_id = w.headwaiter_id
JOIN 
    Bill b ON w.waiter_id = b.waiter_id
GROUP BY 
    hw.name, hw.surname
ORDER BY 
    total_bill_amount DESC;


SELECT 
    c.name AS customer_name, 
    AVG(b.amount) AS avg_spent
FROM 
    Customer c
JOIN 
    Bill b ON c.customer_id = b.customer_id
GROUP BY 
    c.name
HAVING 
    AVG(b.amount) > 400;


SELECT 
    w.name AS waiter_name, 
    w.surname AS waiter_surname, 
    b.bill_date, 
    COUNT(b.bill_id) AS bill_count
FROM 
    Bill b
JOIN 
    Waiter w ON b.waiter_id = w.waiter_id
GROUP BY 
    w.name, w.surname, b.bill_date
HAVING 
    COUNT(b.bill_id) >= 3;

