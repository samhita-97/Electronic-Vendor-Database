use Electronic_vendor;

create table customer(
custID int not null identity(1,1) primary key,
CustName varchar(100) not null,
Email varchar(100) not null,
pass varchar(100)
);

create table payment_details(
AccountNumber varchar(20),
CCNumber varchar(20) primary key,
ExpiryDate varchar(10),
NameonCard varchar(30)
);

create table products(
productID int identity(1,1) primary key,
productType varchar(100)
);


/*------relation-------*/
create table orders(
custID int not null,
productID int not null,
foreign key (custID) references customer,
foreign key (productID) references products
);

create table address_table(
addrID int identity(1,1) primary key,
addressLine1 varchar(200) not null,
addressLine2 varchar(200),
zipcode varchar(6) not null,
city char(20) not null,
state_a char(50) not null
);

create table transactions(
transactionID int identity(1,1) primary key,
custID int,
addrID int,
foreign key (custID) references customer,
foreign key (addrID) references address_table
);


create table orders_prod(
orderID int identity(1,1) primary key,
orderDate date,
orderTime timestamp,
orderQty numeric(10,3),
transactionID int,
productID int not null,
foreign key (transactionID) references transactions,
foreign key (productID) references products
);
create table company(companyName varchar(100) primary key);

create table laptop_spec(
lapName varchar(100) not null primary key,
productID int not null,
companyName varchar(100) not null,
screenresolution varchar(100),
processor varchar(100),
RAM varchar(100),
GPU varchar(100),
internalStorage varchar(100),
lapOS varchar(100),
lapOS_version varchar(100),
price numeric(12,8),
foreign key(productID) references products,
foreign key(companyName) references company
);

create table phone_spec(
phoneName varchar(100) not null primary key,
productID int not null,
companyName varchar(100) not null,
phoneStorage varchar(100),
color varchar(100),
frontcampixel varchar(100),
backcampixel varchar(100),
processor varchar(100),
extStoragecapacity varchar(100),
phoneOS varchar(100),
phoneOS_version varchar(100),
price numeric(12,8),
foreign key(productID) references products,
foreign key(companyName) references company
);


create table tablet_spec(
tabName varchar(100) not null primary key,
productID int not null,
companyName varchar(100) not null,
screenResolution varchar(100),
processor varchar(100),
RAM varchar(100),
tabStorage varchar(100),
tabOS varchar(100),
tabOS_version varchar(100),
price numeric(12,8),
foreign key(productID) references products,
foreign key(companyName) references company
);

