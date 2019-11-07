-- BEGIN CREATE TABLE

create table customers(

customerID int NOT NULL,

primary key customer_PK1 (customerID)

);

create table regularCustomers(

customerID int NOT NULL,
customerName varchar(20),
address varchar(20),
city varchar(20),
state varchar(20),
cityID int,
rewardsPoints INT,
primary key regular_customers_PK1 (customerID),
constraint contraint_city_FK1 foreign key foreign_key_FK1 (cityID) references city (cityID)
);

create table city(

cityID int NOT NULL,
cityName varchar(20),
stateName varchar(20),
primary key city_PK (cityID),
constraint state_FK1 foreign key city_FK1(stateName) references state(stateName),
unique (cityName, stateName)
);

create table state(

stateName varchar(20) NOT NULL,
primary key state_PK (stateName)
);

create table privateCustomers(

customerID int primary key not null,
email varchar(50) not null,
constraint cust_ID1
foreign key pc_fk1(customerID)
references regularCustomers(customerID)
);

create table corporateCustomers(
customerID int primary key not null,
departmentName varchar(50) not null,
corporateContactName varchar(50) not null,
corporateContactEmail varchar(50) not null,
corparateContactPhone varchar(20) not null,
favoriteStaffID int,
constraint ccID
foreign key ccID_FK(customerID)
references regularCustomers(customerID),
constraint ccID2
foreign key ccID_FK2(favoriteStaffID)
references staff(staffID)
);



create table staff (
staffID int primary key not null,
staffName varchar(20) not null,
phone varchar(20) not null,
foodHandlersCert boolean default true
);

create table dates(
calendarDate date primary key NOT NULL
);

create table availableEmployee(
staffID int not null,
calendarDate date not null,
primary key availableEmployee_PK1(staffID, calendarDate),
constraint availibleEmployee1
foreign key availibleEmployee_FK1(staffID)
references staff(staffID),
constraint availibleEmployee2
foreign key availibleEmployee_FK2(calendarDate)
references dates(calendarDate)
);


create table insuranceCompany(
insuranceName varchar(20) primary key not null,
insurancePhone varchar(20) not null
);

create table healthcare(
insuranceName varchar(20) not null,
policyNumber int not null,
primary key healthcare_pk(insuranceName, policyNumber),
constraint healthcare_c
foreign key healthcare_fk(insuranceName)
references insuranceCompany(insuranceName)
);

create table fullTimeStaff(
staffID int primary key not null,
salary int not null,
insuranceName varchar(20) not null,
policyNumber int not null,
constraint fullTimeStaff_c
foreign key fullTimeStaff_fk(insuranceName, policyNumber)
references healthcare(insuranceName, policyNumber),
constraint fullTimeStaff_c2
foreign key fullTimeStaff_fk2(staffID)
references staff(staffID)
);

create table partTimeStaff(
staffID int primary key not null,
hourlyWage double not null,
constraint fullTimeStaff_c3
foreign key fullTimeStaff_fk3(staffID)
references staff(staffID)
);

create table maitreD(
staffID int primary key not null,
constraint maitreD_c
foreign key maitreD_fk(staffID)
references partTimeStaff(staffID)
);

create table dishwasher(
staffID int primary key not null,
constraint dishwasher_c
foreign key dishwasher_fk(staffID)
references partTimeStaff(staffID)
);

create table waiter(
staffID int primary key not null,
constraint waiter_c
foreign key waiter_fk(staffID)
references partTimeStaff(staffID)
);

create table headChef(
staffID int primary key not null,
constraint headChef_c
foreign key headChef_fk(staffID)
references fullTimeStaff(staffID)
);

create table sousChef(
staffID int primary key not null,
constraint sousChef_c
foreign key sousChef_fk(staffID)
references fullTimeStaff(staffID)
);

create table manager(
staffID int primary key not null,
constraint manager_c
foreign key manager_fk(staffID)
references fullTimeStaff(staffID)
);

create table lineCook(
staffID int primary key not null,
constraint lineCook_c
foreign key lineCook_fk(staffID)
references fullTimeStaff(staffID)
);

create table shift(
shiftID int primary key not null,
calendarDate date not null,
AMPM varchar(2) not null,
maitreDID int not null,
managerID int not null,
headChefID int not null,
-- ---------------------------------------------
constraint shift_c
foreign key shift_fk1(maitreDID)
references workingEmployee(staffID),
-- ---------------------------------------------
constraint shift_c2
foreign key shift_fk2(managerID)
references workingEmployee(staffID),
-- ---------------------------------------------
constraint shift_c3
foreign key shift_fk3(headChefID)
references workingEmployee(staffID),
-- ---------------------------------------------
constraint shift_c4
foreign key shift_fk4(maitreDID)
references maitreD(staffID),
-- ---------------------------------------------
constraint shift_c5
foreign key shift_fk5(managerID)
references manager(staffID),
-- ---------------------------------------------
constraint shift_c6
foreign key shift_fk6(headChefID)
references headChef(staffID)
);


create table workingEmployee(
staffID int not null,
calendarDate date not null,
shiftID int not null,
primary key workingEmployee_PK1(staffID, calendarDate, shiftID),
constraint workingEmployee_c
foreign key workingEmployee_fk(staffID, calendarDate)
references availableEmployee(staffID, calendarDate),
constraint workingEmployee_c1
foreign key workingEmployee_fk2(shiftID)
references shift(shiftID)
);

create table maitreDShift(
staffID int not null,
calendarDate date not null,
shiftID int not null,
primary key maitreDShift_pk (staffID, calendarDate, shiftID),
constraint maitreDShift_c
foreign key maitreDShift_fk(staffID, calendarDate, shiftID)
references workingEmployee(staffID, calendarDate, shiftID),
constraint maitreDShift_c2
foreign key maitreDShift_fk2(staffID)
references maitreD(staffID)
);

create table waitingShift(
staffID int not null,
calendarDate date not null,
shiftID int not null,
primary key waitingShift_pk (staffID, calendarDate, shiftID),
constraint waitingShift_c
foreign key waitingShift_fk(staffID, calendarDate, shiftID)
references workingEmployee(staffID, calendarDate, shiftID),
constraint waitingShift_c2
foreign key waitingShift_fk2(staffID)
references waiter(staffID)
);

create table proteins(
proteinName varchar(20) primary key not null
);

create table soupVolume(
volumeAmount varchar(20) primary key not null
);


create table menu(
menuName varchar(50) primary key not null
);

create table dish(
dishName varchar(50) not null,
staffID int not null,
constraint dish_c
foreign key dish_fk(staffID)
references headChef(staffID)
);


create table menuItem(
dishName varchar(50) not null,
menuName varchar(50) not null,
price double not null not null,
portionSize varchar(20),
spiceLevel varchar(20),
isBuffet boolean default false,
primary key menuItem_pk (dishName, menuName, portionSize, spiceLevel),
constraint menuItem_c
foreign key menuItem_fk(dishName)
references dish(dishName),
constraint menuItem_c1
foreign key menuItem_fk1(menuName)
references menu(menuName)
);

create table servedItem(
dishName varchar(50) not null,
menuName varchar(50) not null,
primary key servedItem_pk(dishName, menuName)
);



create table soup(
dishName varchar(50) not null,
volumeAmount varchar(20) not null,
constraint soup_c
primary key soup_pk (dishName, volumeAmount),
foreign key soup_fk(volumeAmount)
references soupVolume(volumeAmount),
constraint soup_c1
foreign key soup_fk1(dishName)
references dish(dishName)
);

create table meatEntree(
dishName varchar(50) not null,
proteinName varchar(20) not null,
primary key soup_pk (dishName, proteinName),
constraint meatEntree_c
foreign key meatEntree_fk(dishName)
references dish(dishName),
constraint meatEntree_c2
foreign key meatEntree_fk2(proteinName)
references proteins(proteinName)
);

create table noodleEntree(
dishName varchar(50) not null,
proteinName varchar(20) not null,
primary key noodleEntree_pk (dishName, proteinName),
constraint noodleEntree_c
foreign key noodleEntree_fk(dishName)
references dish(dishName),
constraint noodleEntree_c2
foreign key noodleEntree_fk2(proteinName)
references proteins(proteinName)
);


create table appetizer(
dishName varchar(50) primary key not null,
constraint appetizer_c
foreign key appetizer_fk(dishName)
references dish(dishName)
);

create table mentorship(
dishName varchar (50) not null,
mentorID int not null,
menteeID int not null,
startDate date not null,
endDate date,
primary key mentorship_pk(dishName, mentorID, menteeID),
constraint mentorship_c
foreign key mentorship_fk(menteeID)
references manager(staffID),
constraint mentorship_c1
foreign key mentorship_fk2(dishName, mentorID)
references expertSous(dishName, mentorID)
);

create table expertSous(
dishName varchar (50) not null,
mentorID int not null,
primary key expertSous_pk(dishName, mentorID),
constraint expertSous_c
foreign key expertSous_fk(dishName)
references dish(dishName),
constraint expertSous_c2
foreign key expertSous_fk2(mentorID)
references sousChef(staffID)
);

create table groups(
groupID int not null,
calendarDate date not null,
checkInTime time not null,
staffID int not null,
shiftID int not null,
primary key groups_pk(groupID),
constraint groups_c
foreign key groups_fk(staffID, calendarDate, shiftID)
references maitreDShift(staffID, calendarDate, shiftID),
constraint groups_c2 unique(checkInTime, staffID, calendarDate)
);


create table groupMember(
groupID int not null,
customerID int not null,
primary key groupMember_pk(groupID, customerID),
constraint groupMember_c
foreign key groupMember_fk(groupID)
references groups(groupID),
constraint groupMember_c2
foreign key groupMember_fk2(customerID)
references customers(customerID)
);

create table waitedTable(
tableNum int not null,
staffID int not null,
calendarDate date not null,
shiftID int not null,
primary key waitedTable_pk(tableNum, staffID, calendarDate, shiftID),
constraint waitedTable_c
foreign key waitedTable_fk(staffID, calendarDate, shiftID)
references maitreDShift(staffID, calendarDate, shiftID),
constraint waitedTable_c2
foreign key waitedTable_fk2(tableNum)
references diningTable(tableNum)
);


create table diningTable(
tableNum int primary key not null,
capacity int not null
);


create table seat(
seatID int primary key not null,
seatNum int not null,
tableNum int not null,
constraint seat_c
foreign key seat_fk(tableNum)
references diningTable(tableNum)
);

create table personSitting(
seatID int not null,
groupID int not null,
customerID int not null,
primary key personSitting_pk(seatID, groupID, customerID),
constraint personSitting_c
foreign key pesonSitting_fk(seatID)
references seat(seatID),
constraint personSitting_c2
foreign key pesonSitting_fk2(groupID, customerID)
references groupMember(groupID, customerID)
);

create table groupLeader(
seatID int not null,
groupID int not null,
customerID int not null,
primary key groupLeader_pk(seatID, groupID, customerID),
constraint groupLeader_c
foreign key groupLeader_fk(seatID, groupID, customerID)
references personSitting(seatID, groupID, customerID)
);


create table guest(
seatID int not null,
groupID int not null,
customerID int not null,
primary key groupLeader_pk(seatID, groupID, customerID),
constraint guest_C
foreign key guest_fk(seatID, groupID, customerID)
references personSitting(seatID, groupID, customerID)
);

create table dineInOrder(
orderNumber int primary key not null,
seatID int not null,
groupID int not null,
customerID int not null,
constraint dineInOrder_c
foreign key dineInOrder_fk(orderNumber)
references orders(orderNumber),
constraint dineInOrder_c2
foreign key dineInOrder_fk2(seatID, groupID, customerID)
references groupLeader(seatID, groupID, customerID)
);

create table orders(
orderNumber int primary key not null,
paidWithMoney double not null,
paidWithRewardPoints int default 0,
shiftID int,
bulkOrderID int not null,

constraint orders_c
foreign key orders_fk(bulkOrderID)
references bulkOrderInfo(bulkOrderID)
);

create table bulkOrderInfo(
bulkOrderID int primary key not null,
minTotal double not null,
discountPercentage double not null,
constraint bulkOrderInfo_c unique (minTotal, discountPercentage)
);

create table phoneOrder(
orderNumber int primary key not null,
phone varchar(20) not null,
orderTime time not null,
customerID int not null,
constraint phoneOrder_c
foreign key phoneOrder_fk(orderNumber)
references orders(orderNumber),
constraint phoneOrder_c2
foreign key phoneOrder_fk2(customerID)
references customers(customerID),
constraint phoneOrders_c3 unique (phone, calendarDate, orderTime, customerID)
);

create table webOrder(
orderNumber int primary key not null,
email varchar(50) not null,
orderTime time not null,
customerID int not null,
constraint webOrder_c
foreign key phoneOrder_fk(orderNumber)
references orders(orderNumber),
constraint webOrder_c2
foreign key webOrder_fk2(customerID)
references customers(customerID),
constraint webOrder_c3 unique (email, calendarDate, orderTime, customerID)
);


create table orderedItem(
dishName varchar(50) not null,
menuName varchar(50) not null,
orderNumber int not null,
portionSize varchar(50) not null,
spiceLevel varchar(50) not null,
primary key orderedItem_pk(dishName, menuName, orderNumber),
constraint orderedItem_c
foreign key orderedItem_fk(dishName, menuName, portionSize, spiceLevel)
references menuItem(dishName, menuName, portionSize, spiceLevel),
constraint orderedItem_c2
foreign key orderedItem_fk2(orderNumber)
references orders(orderNumber)
);

create table departments(
department varchar(20) primary key not null
);


create table cookShift(
staffID int not null,
calendarDate date not null,
shiftID int not null,
department varchar(20) not null,
primary key cookShift_pk (staffID, calendarDate, shiftID),
constraint cookShift_c
foreign key cookShift_fk(staffID)
references lineCook(staffID),
constraint cookShift_c2
foreign key cookShift_fk2(department)
references departments(department),
constraint cookShift_c3
foreign key cookShift_fk3(staffID, calendarDate, shiftID)
references workingEmployee(staffID, calendarDate, shiftID)
);





-- END CREATE TABLES
