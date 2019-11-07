CREATE VIEW Custromer_addresses_V AS
SELECT 'Individual Account' AS 'Customer Type', customerName, address, state, city, cityID, email, '' AS 'departMentName', '' AS 'corporateContactName', '' AS 'corporateContactEmail','' AS 'corporateContactPhone', '' AS 'staffID'
FROM privateCustomers
INNER JOIN regularCustomers USING (customerID)
UNION
SELECT 'Corporate Account' AS 'Customer Type', customerName, address, state, city, cityID, '' AS 'email', departMentName, corporateContactName, corporateContactEmail,corporateContactPhone, staffID
FROM corporateCustomers
INNER JOIN regularCustomers USING (customerID);



CREATE VIEW MenuItem_V AS
SELECT dishName, spiceLevel, price, menuName, portionSize
FROM menuItem
INNER JOIN dish USING(dishName)
WHERE portionSize != 'Buffet'
UNION
SELECT dishName, spiceLevel, price, menuName, 'N/A' AS 'portionSize'
FROM menuItem
INNER JOIN dish USING(dishName)
WHERE portionSize = 'Buffet';


CREATE VIEW Customer_Value_v AS
select customerName, sum(price) as total
from
(
select customerName, price
from menuItem
natural join orderedItem
natural join orders
inner join shift 
using(shiftID)
natural join dineInOrder
inner join regularCustomers
on(dineInOrder.leaderCustomerID = regularCustomers.customerID)
where shift.calendarDate > date_sub(now(), interval 1 year)
union all
-- web order
select customerName, price
from menuItem
natural join orderedItem
natural join orders
inner join shift 
using(shiftID)
natural join webOrder
natural join regularCustomers
where shift.calendarDate > date_sub(now(), interval 1 year)
union all
-- phone order
select customerName, price
from menuItem
natural join orderedItem
natural join orders
inner join shift 
using(shiftID)
natural join phoneOrder
natural join regularCustomers
where shift.calendarDate > date_sub(now(), interval 1 year)
) total
group by customerName
order by total desc;






