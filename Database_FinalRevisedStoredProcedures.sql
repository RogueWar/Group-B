create database ems;
use ems;

CREATE TABLE IF NOT EXISTS employees
(
	id int auto_increment primary key,
	e_last_name varchar(255) DEFAULT NULL,
    e_first_name varchar(255) DEFAULT NULL,
	e_middle_name varchar(255) DEFAULT NULL,
    e_age int(11) DEFAULT NULL,
	trainee varchar(255) NOT NULL,
    average int(11) NOT NULL,
    attendance int(11) NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS trainees
(
	id int auto_increment primary key,
	t_last_name varchar(255) DEFAULT NULL,
    t_first_name varchar(255) DEFAULT NULL,
    t_middle_name varchar(255) DEFAULT NULL,
	t_age int(11) DEFAULT NULL,
    strength_average int(11) DEFAULT NULL
     ) ;
	
CREATE TABLE IF NOT EXISTS strengths (
	strength_id int AUTO_INCREMENT primary key,
	computer_skills int(11) NOT NULL,
	technical_ability int(11) NOT NULL,
	communication_skills int(11) NOT NULL,
	critical_thinking int(11) NOT NULL,
	punctuality int(11) NOT NULL,
	creativity int(11) NOT NULL,
	determination int(11) NOT NULL,
	versatility int(11) NOT NULL,
	average int(11) NOT NULL
	) ;

CREATE TABLE IF NOT EXISTS attend(
    id int auto_increment primary key,
    present int(11) not null,
	absent int(11) not null
) ;


#VALUES PER TABLE

INSERT INTO employees(e_last_name, e_first_name, e_middle_name, e_age, trainee, average, attendance) 
VALUES
	('7KkTM', 'hGHYx', 'KygYz', 25, '', 0, 0)
    ;

INSERT INTO trainees(t_last_name, t_first_name, t_middle_name, t_age, strength_average) 
VALUES
	('Vx61A', 'qQIB7', 'OTkmZ', 7, 0)
	;

	
INSERT INTO strengths(computer_skills, technical_ability, 
communication_skills, critical_thinking, punctuality, creativity, 
determination, versatility, average)
VALUES
    (62, 62, 25, 61, 22, 61, 33, 99, 0)
	;

insert into attend(present, absent)
Values
	(38, 85)
	;
    
#Trainee Create
DELIMITER $$
CREATE PROCEDURE addTrainee(lastname varchar(255), firstname varchar(255), middlename varchar(255), in age int(11), in average int(11))
BEGIN
	INSERT INTO trainees(t_last_name, t_first_name, t_middle_name, t_age, strength_average)
    VALUES(lastname, firstname, middlename , age , average);
END$$
DELIMITER ;
CALL addTrainee('Buentipo','Anthony','C', 50, 0);

#Trainee Read
DELIMITER $$
create procedure getTrainees()
begin
    select * from trainees;
end$$
DELIMITER ;
call gettrainees();
    
    
#Update Trainee
DELIMITER $$
CREATE PROCEDURE updateTrainee(in ID int(11), lastname varchar(255), firstname varchar(255), middlename varchar(255), in age int(11), in average int(11))
BEGIN
 update trainees 
 set t_last_name = lastname, t_first_name = firstname, t_middle_name = middlename, t_age = age, strength_average = average where trainees.id = ID;
END$$
DELIMITER ;
call UpdateTrainee(1,'Gatmin','Charlene','S', 20, 60);
call gettrainees();

#Trainee Delete 
DELIMITER $$
create procedure deleteTrainee(in ID int(11))
begin
delete from trainees where trainees.id = ID;
end$$
DELIMITER ;
call deleteTrainee(1);
call gettrainees();



#Employee Create
DELIMITER $$
CREATE PROCEDURE addEmployee(lastname varchar(255), firstname varchar(255), middlename varchar(255), in age int(11), trainee varchar(255), in average int(11), in attendance int(11))
BEGIN
	INSERT INTO employees(e_last_name, e_first_name, e_middle_name, e_age, trainee, average, attendance)
    VALUES(lastname, firstname, middlename , age, trainee, average, attendance);
END$$
DELIMITER ;
CALL AddEmployee('Cervantes','Yugo','C', 22, '', 0, 0);

#Employee Read
DELIMITER $$
create procedure getEmployees()
begin
    select * from employees;
end$$
DELIMITER ;
call getEmployees();

#Employee Update 
DELIMITER $$
CREATE PROCEDURE updateEmployee(in ID int(11), lastname varchar(255), firstname varchar(255), middlename varchar(255), in age int(11), trainee varchar(255), in average int(11), in attendance int(11))
BEGIN
 update employees
 set e_last_name = lastname, e_first_name = firstname, e_middle_name = middlename, e_age = age, trainee = trainee, average = average, attendance = attendance where employees.id = ID;
END$$
DELIMITER ;
call updateEmployee(1,'Zeo','Rig','S', 24, '', 0,0);
call getEmployees();

#Employee Delete 
DELIMITER $$
create procedure deleteEmployee(in ID int(11))
begin
delete from employees where employees.id = ID;
end$$
DELIMITER ;
call deleteEmployee(1);
call getEmployees();
    
#Strengths Create
DELIMITER $$
CREATE PROCEDURE addStrengths(in comp_skills int(11), in tech_skills int(11), in comm_skills int(11), 
in crit_skills int(11), in punc int(11), in crea int(11), in dete int(11), in vers int(11), in aver int(11))

BEGIN
	INSERT INTO strengths(computer_skills, technical_ability, communication_skills, critical_thinking, punctuality, creativity, determination, versatility, average)
    VALUES(comp_skills, tech_skills, comm_skills , crit_skills, punc, crea, dete, vers, aver);
END$$
DELIMITER ;
call addStrengths(60,70, 65, 34, 79, 54, 67, 56, 0);



#Strengths Read
DELIMITER $$
create procedure getStrengths()
begin
    select * from strengths;
end$$
DELIMITER ;
call getStrengths();



#Strengths Update
DELIMITER $$
CREATE PROCEDURE updateStrengths(in ID int, in comp_skills int(11), in tech_skills int(11), in comm_skills int(11), 
in crit_skills int(11), in punc int(11), in crea int(11), in dete int(11), in vers int(11), in aver int(11))
BEGIN
 update strengths 
 set computer_skills = comp_skills, 
	technical_ability = tech_skills, 
    communication_skills = comm_skills,
    critical_thinking = crit_skills,
    punctuality = punc, 
    creativity = crea, 
    determination = dete, 
    versatility = vers, 
    average = aver
 where strengths.strength_id = ID;
END$$
DELIMITER ;
call updateStrengths(1,61,71, 66, 35, 80, 54, 67, 56, 0);
call getStrengths();

#Strengths Delete 
DELIMITER $$
create procedure deleteStrength(in ID int(11))
begin
delete from strengths where strengths.strength_id = ID;
end$$
DELIMITER ;
call deleteStrength(1);
call getStrengths();



#Attendance Create
DELIMITER $$
CREATE PROCEDURE addAttend(in pres int(11), in abse int(11))

BEGIN
	INSERT INTO attend(present, absent)
    VALUES(pres, abse);
END$$
DELIMITER ;
CALL addAttend(3,3);

#Attendance Read
DELIMITER $$
create procedure getAttend()
begin
    select * from attend;
end$$
DELIMITER ;
call getAttend();

#Attendance Update
DELIMITER $$
CREATE PROCEDURE updateAttend(in ID int(11),in pres int(11), in abse int(11))
BEGIN
 update attend 
 set present = pres, 
	absent = abse
 where attend.id = ID;
END$$
DELIMITER ;
call updateAttend(1,11,2);
call getAttend();


#Attendance Delete 
DELIMITER $$
create procedure deleteAttend(in ID int(11))
begin
delete from attend where attend.id = ID;
end$$
DELIMITER ;
call deleteAttend(1);
call getAttend();

#1. GET THE AVERAGE SCORE OF THE TRAINEES IN EACH OF THE STRENGTH

DELIMITER $$
create procedure getTraineeAverage()
begin
update trainees set strength_average=
(select sum(computer_skills + technical_ability + communication_skills + critical_thinking + punctuality + creativity + determination + versatility)/8 from strengths where trainees.id = strengths.strength_id);
end $$
delimiter ;
call getStrengths();
call getTraineeAverage();
call getTrainees();

#2. GET THE AVERAGE SCORE OF THE TRAINEES TRAINED BY EACH EMPLOYEE 

DELIMITER $$
create procedure getEmployeeTraineeAverage()
begin
update employees set trainee=
(select t_last_name from trainees where employees.id = trainees.id),
average = (select strength_average from trainees where employees.id = trainees.id);
end $$
delimiter ;
call getEmployeeTraineeAverage();
call getEmployees();

#3. GET THE TRAINEES WHOSE STRENGTH IS GREATER THAN AVERAGE FOR THAT STRENGTH. THE TARGET STRENGTH IS DEFINED BY PARAM
DELIMITER $$
CREATE PROCEDURE GetTrainee(IN input INT, OUT OUTPUT VARCHAR(255))
BEGIN
	select t_last_name, t_first_name, t_middle_name, strength_average from trainees where strength_average > input;
END$$
DELIMITER ;
call gettrainee (50, @ems);

#4. GET THE EMPLOYEE AND THE TOTAL NUMBER OF ABSENCES OF THEIR TRAINEES

DELIMITER $$
create procedure getEmployeeTraineeAbsent()
begin
update employees set attendance=
(select absent from attend where employees.id = attend.id);
end $$
delimiter ;
call getAttend();
call getEmployeeTraineeAbsent();
call getEmployees();

#5. GET THE EMPLOYEE WHOSE ALL TRAINEES ACHIEVE AVERAGE STRENGTH GREATER THAN PARAM
DELIMITER $$
CREATE PROCEDURE getEmployeeTraineeAchieveAverage(IN input INT, OUT OUTPUT VARCHAR(255))
BEGIN
	select e_last_name, e_first_name, e_middle_name, trainee, average from employees where average > input;
END$$
DELIMITER ;
call  getEmployeeTraineeAchieveAverage (60, @employee);









