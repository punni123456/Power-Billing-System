
DROP TABLE customer;
DROP TABLE feedback;
DROP TABLE admins;
DROP TABLE billing;
DROP TABLE invoice;


CREATE TABLE customer(
        cust_id int,
        cust_name varchar2(25),
		account_type varchar2(25),
		cust_address varchar2(30),
		cust_state  varchar2(25),
		city     varchar2(25),
		pincode  varchar2(25),
		email_id  varchar2(25),
		cust_pass varchar2(25),
		cust_status varchar2(25));
	 

insert into customer values(1,'Rita','customer','Uttora','Pemanent','Naoga','D1207','rita@gmail.com','rita4532ah','businessman');
insert into customer values(2,'mita','customer','Dhanmondi','Temporary','Dhaka','D1205','mita@gmail.com','mita4532ah','lawyer');	
insert into customer values(3,'jannat','customer','Kolabagan','Permanent','Dhaka','D1208','jannat@gmail.com','jannat4532ah','doctor');	
insert into customer values(4,'Raisa','customer','Mirpur','Permanent','Cumilla','D1209','raisa@gmail.com','raisa4532ah','employee');	
insert into customer values(5,'Zuthi','customer','Modhubaag','Permanent','Ctg','D1211','zuthi@gmail.com','zuthi4532ah','faculty');	
insert into customer values(6,'Istiaque','customer','Jhilpaar','Permanent','Borishal','D1202','ishti@gmail.com','Ish4532ah','lawyer');			

CREATE TABLE feedback(
        feedback_id int,
		cust_id  int,
		feedback_details  varchar2(25),
		feedback_date    varchar2(25),
		feedback_status   varchar2(25));
		
insert into feedback values (151,4,'Service is Good','12/08/2022','Good');
insert into feedback values (152,8,'Service Very Good','09/07/2022','Bad');
insert into feedback values (153,3,'Service is Bad','22/08/2022','Good');
insert into feedback values (154,2,'Service is Good','11/06/2022','Bad');
insert into feedback values (155,9,'Service is Not Good','18/04/2022','Good');	
insert into feedback values (156,11,'Service is Poor','17/08/2022','Good');

CREATE TABLE admins(
	admin_id int,
	admin_name varchar2(25),
	login_id varchar2(25),
	securityKey varchar2(25),
		PRIMARY KEY(admin_id));

insert into admins (admin_id,admin_name,login_id,securityKey)values (200,'Ishtiaque','Ishtiaque20','Ishtiaque20');
insert into admins (admin_id,admin_name,login_id,securityKey)values (201,'Raisa','Raisa30','Raisa30');
insert into admins (admin_id,admin_name,login_id,securityKey)values (202,'Punni','Punni40','Punni40');

CREATE TABLE billing(
	bill_no int,
	a_id int,
	payment_mode VARCHAR2(25),
	pay_date varchar2(20),
	bill_amount FLOAT,
	paid_amount FLOAT,
	excess_paid FLOAT,
	statusb varchar2(25));
		


insert into billing(bill_no,a_id,payment_mode,pay_date,bill_amount,paid_amount,excess_paid,statusb)values (605,74,'On_Cash','2022/07/30',2000.00,2250.00,250.00,'paid');
insert into billing(bill_no,a_id,payment_mode,pay_date,bill_amount,paid_amount,excess_paid,statusb)values (606,56,'On_Cash','2022/07/30',1400.00,1750.00,350.00,'unpaid');
insert into billing(bill_no,a_id,payment_mode,pay_date,bill_amount,paid_amount,excess_paid,statusb)values (607,23,'On_Cash','2022/07/30',800.00,1200.00,400.00,'unpaid');
insert into billing(bill_no,a_id,payment_mode,pay_date,bill_amount,paid_amount,excess_paid,statusb)values (608,72,'On_Cash','2022/07/30',1005.00,1250.00,245.00,'paid');
insert into billing(bill_no,a_id,payment_mode,pay_date,bill_amount,paid_amount,excess_paid,statusb)values (609,45,'On_Cash','2022/07/30',3000.00,3250.00,250.00,'unpaid');



CREATE TABLE invoice(
	inv_id int,
	electricityBoard varchar2(25),
	bill_no int,
	present_reading float,
	p_unit float,
	fixed_chrg float,
	tax float,
	bill_amount FLOAT,
	statusInv varchar2(25));
		

insert into invoice(inv_id,electricityBoard,bill_no,present_reading,p_unit,fixed_chrg,tax,bill_amount,statusInv)values (300,'Dhanmondi',606,325.00,175.00,900.00,90.00,990.00,'paid');
insert into invoice(inv_id,electricityBoard,bill_no,present_reading,p_unit,fixed_chrg,tax,bill_amount,statusInv)values (301,'Dhanmondi',609,350.00,200.00,980.00,90.00,1070.00,'unpaid');
insert into invoice(inv_id,electricityBoard,bill_no,present_reading,p_unit,fixed_chrg,tax,bill_amount,statusInv)values (302,'Dhanmondi',607,400.00,275.00,1200.00,200.00,1400.00,'paid');
insert into invoice(inv_id,electricityBoard,bill_no,present_reading,p_unit,fixed_chrg,tax,bill_amount,statusInv)values (303,'Dhanmondi',605,330.00,234.00,1000.00,110.00,1110.00,'unpaid');
insert into invoice(inv_id,electricityBoard,bill_no,present_reading,p_unit,fixed_chrg,tax,bill_amount,statusInv)values (304,'Dhanmondi',608,276.00,101.00,400.00,40.00,440.00,'paid');


CREATE OR REPLACE TRIGGER valueAdd 
AFTER INSERT
ON customer
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Credentials Inserted!!');
END;
/
commit;

