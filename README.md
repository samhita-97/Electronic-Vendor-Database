# Electonic-Vendor-Database
This is database maintaining the records of a electronic vendor like Best Buy

the database contains the details of the

Customer 1.1 Frequent Customer 1.2 Infrequent Customer
Products
Stores
Warehouses
Suppliers
Companies
Transactions
Orders
Shippers
Address
Tables are as follows

Customer Frequent Customer Infrequent Customer Products Stores Warehouse Address_table Suppliers Company Shipper Transactions Orders_prod

Relations between the Tables would be as follows

Company produces Products Supplier gets Products Company sc to Supplier Supplier supplies to Warehouse Warehouse located at Address_table Stores located at Address_table Warehouse sends Stores Warehouse contains_prod Products Stores contains_prod Products Warehouse online order Orders_prod Shipper takes Orders_prod Shipper delivers Address_table
