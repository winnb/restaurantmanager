
List the customers. For each customer, indicate which category he or she fall into, and
his or her contact information. If you have more than one independent categorization of customers, please indicate which category the customer falls into for all of the
categorizations.
-- QUERY A
-- List the customers. For each customer, indicate which category he or she fall into, and
-- his or her contact information. If you have more than one independent categorization of customers, please indicate which category the customer falls into for all of the
-- categorizations.

"Customer Type",ID,"Customer Name",Address,City,State,Email,Department,"Contact Name","Contact Phone"
"Private Customer",3,"Andrew Delgado","123 San Diego","San Diego",California,andrewdelgado017@gmail.com," "," "," "
"Private Customer",4,"Jonah Cornish","1400 Penn Avenue","Los Angeles",California,jonah@gmail.com," "," "," "
"Private Customer",5,"Brandon Winn","1827 7th Street",Utqiagvik,Alaska,Brandon@gmail.com," "," "," "
"Private Customer",6,"David Brown","Burj Khalifa","San Antonio",Texas,DavidBrown@gmail.com," "," "," "
"Private Customer",11,"Alex Jones","45 Main St",Miami,Florida,aj@apple.com," "," "," "
"Private Customer",12,"Jim Johnson","5 1st Street",Athens,Georgia,jj@hotmail.com," "," "," "
"Private Customer",13,"Sean Smith","2099 2nd Ave","Tampa Bay",Florida,ss@msn.com," "," "," "
"Private Customer",14,"Justin Trudeau","600 Maple Way",Auburn,Alabama,jt@canada.com," "," "," "
"Private Customer",15,"Tom Stensil","110 Grant St",Newburgh,New-York,ts@Apple.com," "," "," "
"Private Customer",16,"Kevin Son","267 5th Ave",Dallas,Texas,ks@hotmail.com," "," "," "
"Corporate Customer",7,McDonalds,"123 Golden Arch Way","New-York City",New-York," ",Billing,"Johnny Unitas",3106658787
"Corporate Customer",8,Nike,"35 Swoosh Avenue","Crimson Tide",Alabama," ",HR,"Billy Bob",6129890707
"Corporate Customer",9,CSULB,"69 Beach Drive",Atlanta,Georgia," ",IT,"Jimmy James",8006768500
"Corporate Customer",10,Apple,"Steve Jobs Lane","La Jolla",California," ",Training,"Axel rose",7178234545
"Corporate Customer",17,Microsoft,"849 Last Ave",Juneau,Alaska," ",Billing,"Baker Mayfield",4568521489
"Corporate Customer",18,Chick-fil-A,"600 Rock Ave",Compton,California," ",Billing,"Billy Mays",4789625461
"Corporate Customer",19,Adidas,"32 Sprite Ave",Everglades,Florida," ",IT,"Philip Rivers",6985231478
"Corporate Customer",20,Brooks,"20 Bell Ave",Savannah,Georgia," ",HR,"Kobe Bryant",5236598741
"Anonymous Customer",1," "," "," "," "," "," "," "," "
"Anonymous Customer",2," "," "," "," "," "," "," "," "
"Anonymous Customer",21," "," "," "," "," "," "," "," "
"Anonymous Customer",22," "," "," "," "," "," "," "," "
"Anonymous Customer",23," "," "," "," "," "," "," "," "
"Anonymous Customer",24," "," "," "," "," "," "," "," "
"Anonymous Customer",25," "," "," "," "," "," "," "," "
"Anonymous Customer",26," "," "," "," "," "," "," "," "
"Anonymous Customer",27," "," "," "," "," "," "," "," "
"Anonymous Customer",28," "," "," "," "," "," "," "," "
"Anonymous Customer",29," "," "," "," "," "," "," "," "
"Anonymous Customer",30," "," "," "," "," "," "," "," "
"Anonymous Customer",31," "," "," "," "," "," "," "," "
"Anonymous Customer",32," "," "," "," "," "," "," "," "
"Anonymous Customer",33," "," "," "," "," "," "," "," "
"Anonymous Customer",34," "," "," "," "," "," "," "," "
"Anonymous Customer",35," "," "," "," "," "," "," "," "
"Anonymous Customer",36," "," "," "," "," "," "," "," "
"Anonymous Customer",37," "," "," "," "," "," "," "," "
"Anonymous Customer",38," "," "," "," "," "," "," "," "
"Anonymous Customer",39," "," "," "," "," "," "," "," "
"Anonymous Customer",40," "," "," "," "," "," "," "," "
"Anonymous Customer",41," "," "," "," "," "," "," "," "
"Anonymous Customer",42," "," "," "," "," "," "," "," "
"Anonymous Customer",43," "," "," "," "," "," "," "," "

-- QUERY B
-- For each order, list the total cost to the customer for that order. Sometimes, a group of
-- customers will come in and split the order up into multiple checks. Treat that as though
-- you had two separate parties at the same table.

'1', '2.5'
'2', '2.5'
'3', '8'
'4', '3'
'5', '4'
'6', '2.5'
'7', '8'
'8', '7'
'9', '8'
'10', '12'
'11', '10'
'12', '7'
'13', '14'
'14', '13'
'15', '8'
'16', '3.5'
'17', '15'
'18', '7'
'19', '5'
'20', '12'
'21', '10'
'22', '3'
'23', '14'
'24', '13'
'25', '8'
'26', '9'
'27', '12'
'28', '3'
'29', '15'
'30', '3'
'31', '5'
'32', '7'
'33', '15'
'34', '12'
'35', '7'
'36', '3'
'37', '7'
'38', '7'
'39', '7'
'40', '3'
'41', '9'
'42', '15'
'43', '13'
'44', '2'
'45', '12'
'46', '10'
'47', '15'
'48', '9'
'49', '13'
'50', '10'
'51', '7'
'52', '2.5'
'53', '5'
'54', '3.5'
'55', '8'
'56', '12'
'57', '0'
'58', '0'
'59', '0'
'60', '0'
'61', '0'
'62', '0'
'63', '0'
'64', '0'
'65', '12'
'66', '7'
'67', '3'
'68', '7'
'69', '7'
'70', '7'
'71', '3'
'72', '9'
'73', '15'
'74', '13'
'75', '2'
'76', '12'
'77', '10'


-- QUERY C
-- List the top three customers in terms of their net spending for the past two years, an


'Nike', '46.5'
'Alex Jones', '43'
'Andrew Delgado', '37.5'

-- QUERY D
-- Find all of the sous chefs who have three or more menu items that they can prepare. For
-- each sous chef, list their name, the number of menu items that they can prepare, and
-- each of the menu items. You can use group_concat to get all of a given sous chef’s data
-- on one row, or print out one row per mechanic per skill.

'Jenny Chang', '6', 'Egg Drop Soup,Eggplant Tofu,Kung Pao Chicken,Black Pepper Beef,Egg Rolls,Jalapeno Poppers'
'Jonathon Yu', '3', 'Chow Mein,Black Pepper Beef,Miso Soup'
'Tom Chi', '5', 'Black Pepper Beef,Kung Pao Chicken,Pork Plate,Jalapeno Poppers,Peanut Curry'
'Xi Chang', '6', 'Fried Rice,Jalapeno Poppers,Mongolian Beef,Black Pepper Beef,Hot and Sour Soup,Kung Pao Chicken'
'Xi Jing Pi', '3', 'Sweet And Sour Pork,Pan Fried Noodles,White Rice'

-- QUERY E

'Andrew Delgado', '16'

-- QUERY F
-- Find the three menu items most often ordered from the Children’s menu and order them
-- from most frequently ordered to least frequently ordered.

'Egg Drop Soup', '3'
'Mongolian Beef', '2'
'Egg Rolls', '1'
'Pan Fried Noodles', '1'
'Fried Rice', '1'
'Orange Chicken', '1'

-- QUERY H
-- List the customers, sorted by the amount of Miming’s Money that they have, from largest
-- to smallest.

'David Brown', '50'
'Brandon Winn', '47'
'Apple', '41'
'Alex Jones', '41'
'Sean Smith', '40'
'Justin Trudeau', '40'
'Tom Stensil', '40'
'Kevin Son', '40'
'McDonalds', '33'
'Nike', '33'
'CSULB', '33'
'Jonah Cornish', '13'
'Andrew Delgado', '13'
'Brooks', NULL
'Adidas', NULL
'Chick-fil-A', NULL
'Microsoft', NULL
'Jim Johnson', NULL

-- QUERY I
-- List the customers and the total that they have spent at Miming’s ever, in descending
-- order by the amount that they have spent.

'Nike', '46.5'
'Alex Jones', '43'
'Andrew Delgado', '37.5'
'Apple', '37'
'Brooks', '36'
'CSULB', '34'
'Chick-fil-A', '28'
'Microsoft', '24'
'Adidas', '23'
'McDonalds', '23'
'Brandon Winn', '7'
'Jim Johnson', '3'

-- QUERY K
-- List the three customers who have spent the most at Miming’s over the past year. Order
-- by the amount that they spent, from largest to smallest.

'Brooks', '34'
'Alex Jones', '29'
'Nike', '23.5'

-- QUERY L
-- List the five menu items that have generated the most revenue for Miming’s over the past
-- year.

'Mongolian Beef', '77'
'Peanut Curry', '72'
'Orange Chicken', '49'
'Drunken Noodles', '45'
'Pork Plate', '45'

-- QUERY M
-- Find the sous chef who is mentoring the most other sous chef. List the menu items that
-- the sous chef is passing along to the other sous chefs.

'Tom Chi', 'Jalapeno Poppers'
'Tom Chi', 'Pork Plate'
'Tom Chi', 'Kung Pao Chicken'

-- QUERY N
-- Find the three menu items that have the fewest sous chefs skilled in those menu items.

'Drunken Noodles', '2'
'Black Pepper Beef', '3'
'Pan Fried Noodles', '3'

-- QUERY P
-- List the contents and prices of each of the menus.

'Childrens', 'Chow Mein', '4'
'Childrens', 'Egg Drop Soup', '2.5'
'Childrens', 'Egg Rolls', '3'
'Childrens', 'Eggplant Tofu', '6'
'Childrens', 'Fried Rice', '4'
'Childrens', 'Miso Soup', '2.5'
'Childrens', 'Mongolian Beef', '7'
'Childrens', 'Orange Chicken', '7'
'Childrens', 'Pan Fried Noodles', '8'
'Childrens', 'Sweet and Sour Pork', '6'
'Childrens', 'White Rice', '2'
'Evening', 'Black Pepper Beef', '12'
'Evening', 'Black Pepper Beef', '12'
'Evening', 'Black Pepper Beef', '12'
'Evening', 'Black Pepper Beef', '12'
'Evening', 'Chow Mein', '10'
'Evening', 'Chow Mein', '10'
'Evening', 'Chow Mein', '10'
'Evening', 'Chow Mein', '10'
'Evening', 'Drunken Noodles', '15'
'Evening', 'Drunken Noodles', '15'
'Evening', 'Drunken Noodles', '15'
'Evening', 'Drunken Noodles', '15'
'Evening', 'Egg Drop Soup', '3.5'
'Evening', 'Egg Drop Soup', '3.5'
'Evening', 'Egg Drop Soup', '3.5'
'Evening', 'Egg Drop Soup', '3.5'
'Evening', 'Egg Rolls', '5'
'Evening', 'Eggplant Tofu', '12'
'Evening', 'Eggplant Tofu', '12'
'Evening', 'Eggplant Tofu', '12'
'Evening', 'Eggplant Tofu', '12'
'Evening', 'Fried Rice', '10'
'Evening', 'Hot and Sour Soup', '3.5'
'Evening', 'Hot and Sour Soup', '3.5'
'Evening', 'Hot and Sour Soup', '3.5'
'Evening', 'Hot and Sour Soup', '3.5'
'Evening', 'Hot and Sour Soup', '3.5'
'Evening', 'Jalapeno Poppers', '6'
'Evening', 'Kung Pao Chicken', '14'
'Evening', 'Kung Pao Chicken', '14'
'Evening', 'Miso Soup', '3.5'
'Evening', 'Miso Soup', '3.5'
'Evening', 'Miso Soup', '3.5'
'Evening', 'Miso Soup', '3.5'
'Evening', 'Miso Soup', '10'
'Evening', 'Mongolian Beef', '13'
'Evening', 'Mongolian Beef', '13'
'Evening', 'Mongolian Beef', '13'
'Evening', 'Mongolian Beef', '13'
'Evening', 'Orange Chicken', '13'
'Evening', 'Pan Fried Noodles', '14'
'Evening', 'Pan Fried Noodles', '14'
'Evening', 'Pan Fried Noodles', '14'
'Evening', 'Pan Fried Noodles', '14'
'Evening', 'Peanut Curry', '12'
'Evening', 'Peanut Curry', '12'
'Evening', 'Peanut Curry', '12'
'Evening', 'Peanut Curry', '12'
'Evening', 'Pork Plate', '15'
'Evening', 'Pork Plate', '15'
'Evening', 'Pork Plate', '15'
'Evening', 'Pork Plate', '15'
'Evening', 'Sweet and Sour Pork', '12'
'Evening', 'White Rice', '3'
'Lunch', 'Black Pepper Beef', '7'
'Lunch', 'Black Pepper Beef', '7'
'Lunch', 'Black Pepper Beef', '7'
'Lunch', 'Black Pepper Beef', '7'
'Lunch', 'Chow Mein', '5'
'Lunch', 'Chow Mein', '5'
'Lunch', 'Chow Mein', '5'
'Lunch', 'Chow Mein', '5'
'Lunch', 'Drunken Noodles', '10'
'Lunch', 'Drunken Noodles', '10'
'Lunch', 'Drunken Noodles', '10'
'Lunch', 'Drunken Noodles', '10'
'Lunch', 'Egg Drop Soup', '2.5'
'Lunch', 'Egg Drop Soup', '2.5'
'Lunch', 'Egg Drop Soup', '2.5'
'Lunch', 'Egg Drop Soup', '2.5'
'Lunch', 'Egg Rolls', '3'
'Lunch', 'Eggplant Tofu', '7'
'Lunch', 'Eggplant Tofu', '7'
'Lunch', 'Eggplant Tofu', '7'
'Lunch', 'Eggplant Tofu', '7'
'Lunch', 'Fried Rice', '5'
'Lunch', 'Hot and Sour Soup', '2.5'
'Lunch', 'Hot and Sour Soup', '2.5'
'Lunch', 'Hot and Sour Soup', '2.5'
'Lunch', 'Hot and Sour Soup', '2.5'
'Lunch', 'Hot and Sour Soup', '2.5'
'Lunch', 'Jalapeno Poppers', '3'
'Lunch', 'Kung Pao Chicken', '9'
'Lunch', 'Kung Pao Chicken', '9'
'Lunch', 'Miso Soup', '2.5'
'Lunch', 'Miso Soup', '2.5'
'Lunch', 'Miso Soup', '2.5'
'Lunch', 'Miso Soup', '2.5'
'Lunch', 'Miso Soup', '8'
'Lunch', 'Mongolian Beef', '8'
'Lunch', 'Mongolian Beef', '8'
'Lunch', 'Mongolian Beef', '8'
'Lunch', 'Mongolian Beef', '8'
'Lunch', 'Orange Chicken', '8'
'Lunch', 'Pan Fried Noodles', '9'
'Lunch', 'Pan Fried Noodles', '9'
'Lunch', 'Pan Fried Noodles', '9'
'Lunch', 'Pan Fried Noodles', '9'
'Lunch', 'Peanut Curry', '7'
'Lunch', 'Peanut Curry', '7'
'Lunch', 'Peanut Curry', '7'
'Lunch', 'Peanut Curry', '7'
'Lunch', 'Pork Plate', '10'
'Lunch', 'Pork Plate', '10'
'Lunch', 'Pork Plate', '10'
'Lunch', 'Pork Plate', '10'
'Lunch', 'Sweet and Sour Pork', '7'
'Lunch', 'White Rice', '2'
'Sunday Brunch Buffet', 'Chow Mein', '0'
'Sunday Brunch Buffet', 'Egg Rolls', '0'
'Sunday Brunch Buffet', 'Eggplant Tofu', '0'
'Sunday Brunch Buffet', 'Fried Rice', '0'
'Sunday Brunch Buffet', 'Miso Soup', '0'
'Sunday Brunch Buffet', 'Mongolian Beef', '0'
'Sunday Brunch Buffet', 'Orange Chicken', '0'
'Sunday Brunch Buffet', 'Pan Fried Noodles', '0'
'Sunday Brunch Buffet', 'Sweet and Sour Pork', '0'
'Sunday Brunch Buffet', 'White Rice', '0'

-- QUERY Q
--List the dishes created by each head chef

select staffname,dishName
from headChef inner join staff using(staffID) inner join dish using (staffID);

Justin Trou	Pan Fried Noodles
Justin Trou	Peanut Curry
Justin Trou	Pork Plate
Justin Trou	Sweet and Sour Pork
Ben Bradley	Chow Mein
Ben Bradley	Drunken Noodles
Ben Bradley	Egg Drop Soup
Ben Bradley	White Rice
Burt Reynolds	Black Pepper Beef
Burt Reynolds	Egg Rolls
Burt Reynolds	Eggplant Tofu
Burt Reynolds	Fried Rice
Chipper Jones	Hot and Sour Soup
Chipper Jones	Jalapeno Poppers
Chipper Jones	Kung Pao Chicken
Chipper Jones	Miso Soup
JK Rowling	Mongolian Beef
JK Rowling	Orange Chicken

-- QUERY R
-- List the name of the dishes that the sous chef is a master of
select staffName,dishName from expertSous inner join staff on expertSous.mentorID= staff.staffID;

'Jonathon Yu', 'Black Pepper Beef'
'Jonathon Yu', 'Chow Mein'
'Jonathon Yu', 'Miso Soup'
'Tom Chi', 'Black Pepper Beef'
'Tom Chi', 'Jalapeno Poppers'
'Tom Chi', 'Kung Pao Chicken'
'Tom Chi', 'Peanut Curry'
'Tom Chi', 'Pork Plate'
'Jenny Chang', 'Black Pepper Beef'
'Jenny Chang', 'Egg Drop Soup'
'Jenny Chang', 'Egg Rolls'
'Jenny Chang', 'Eggplant Tofu'
'Jenny Chang', 'Jalapeno Poppers'
'Jenny Chang', 'Kung Pao Chicken'
'Xi Chang', 'Black Pepper Beef'
'Xi Chang', 'Fried Rice'
'Xi Chang', 'Hot and Sour Soup'
'Xi Chang', 'Jalapeno Poppers'
'Xi Chang', 'Kung Pao Chicken'
'Xi Chang', 'Mongolian Beef'
'Xi Jing Pi', 'Pan Fried Noodles'
'Xi Jing Pi', 'Sweet And Sour Pork'
'Xi Jing Pi', 'White Rice'
'Sonny Wilson', 'Drunken Noodles'
'Sonny Wilson', 'Orange Chicken'


-- QUERY S
-- List the staff who holds a handler certificate?

select staffName,foodHandlersCert from staff
where foodHandlersCert is not null;

'Justin Trou', '1'
'Jonathon Yu', '1'
'Tom Chi', '1'
'Lewis Min', '1'
'Douglas Trou', '1'
'Jessica Trou', '1'
'Laura Yu', '1'
'Taichi Min', '1'
'Anna Chi', '1'
'Jaclyn Chi', '1'
'Jenny Chang', '1'
'Xi Chang', '1'
'Xi Jing Pi', '1'
'Sonny Wilson', '1'
'Ben Bradley', '1'
'Burt Reynolds', '1'
'Chipper Jones', '1'
'JK Rowling', '1'
