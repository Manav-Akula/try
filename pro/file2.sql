USE pro;

insert into Client(  FirstName, LastName, Password, Address, CreditCardInfo, PhoneNumber, Email)
values ( 'Susie ', 'Guzman','susie123', '1234 whatever street detroit MI 48202','1010101010', '11111', 'susie@gmail.com'),
('Lawson', 'Lee', 'lawson123', '5678 ivan street tata CO 12561','2020202020', '22222','lawson@gmail.com'),
('Brady', 'Plum', 'brady23', '9101 marko street brat DU 54321','3030303030', '33333','brady@gmail.com'),
('Moore', 'Mone', 'moore123','1121 frey street sestra MI 48202','4040404040', '44444', 'moore@gmail.com'),
('Phillips', 'Zipp','phillips123','3141 m8s street baka IL 48000','5050505050', '55555', 'phillips@gmail.com'),
('Pierce', 'Lucki','pierce123','5161 yolos street ides CM 24680','6060606060', '66666', 'pierce@gmail.com'),
('Francis','Hawkin', 'francis123','7181 egypt street lolas DT 13579','7070707070', '77777', 'francis@gmail.com'),
('Smith', 'Joe','smith123','9202 sign street samo ne tu MH 09876','8080808080', '88888', 'smith@gmail.com'),
('Stone', 'Pills','stone123','1222 snoop street kojik HW 87654','9090909090', '99999', 'stone@gmail.com'),
('Murgi', 'Patil','murgi123','3242 snipe street gun BY 98765','1212121212', '12121', 'murgi@gmail.com');

select* from Client;

insert into Client(  FirstName, LastName, Password, Address, CreditCardInfo, PhoneNumber, Email)
values ( 'root', 'root','pass1234', '1234 whatever street detroit MI 48202','1010101010', '11111', 'root@gmail.com');


insert into Administrator(Username, Password, Email)
values ( 'manav', 'manav123', 'manav@gmail.com'),
( 'mrudav', 'mrudav123', 'mrudav@gmail.com');

insert into Contractor( Username, Password, Email)
values ( 'david', 'david123', 'david@gmail.com');

insert into QuoteRequest ( ClientID, RequestDate, Status, Note, NumberOfTrees, AvgSize, AvgHeight, HeightOfTallestTree, Location, ProximityToHouse)
 values( 1,'2010-01-01', 'Bad', 'note1', 1, 10, 10.1, 10, 'frontyard', 16.9),
( 2,'2011-02-02', 'Good', 'note2', 2, 6, 11.2, 12, 'backyard', 15.8),
( 3,'2012-03-03', 'Good', 'note3', 3, 5, 13.3, 14, 'frontyard', 14.7),
( 4,'2013-04-04', 'Ok', 'note4', 4, 8, 9.4, 16, 'backyard', 7.6),
( 5,'2014-05-05', 'Bad', 'note5', 5, 9, 8.5, 18, 'frontyard', 5.5),
( 6,'2015-06-06', 'Ok', 'note6', 6, 4, 7.6, 20, 'backyard', 9.4),
( 7,'2016-07-07', 'Good', 'note7', 7, 4, 14.7, 22, 'frontyard', 13.3),
( 8,'2017-08-08', 'Bad', 'note8', 8, 9, 15.8, 24, 'backyardyard', 11.2),
( 9,'2018-09-09', 'Ok', 'note9', 9, 12, 16.9, 26, 'frontyard', 10.1);

 select * from QuoteRequest;
 
insert into QuoteResponse (RequestID, ClientID, ResponseDate, Price, WorkPeriodFrom, WorkPeriodTo, Note) 
values(1, 1, '2010-01-01', 1000, '2010-01-02', '2010-01-12', 'Note1'),
(2, 2, '2011-02-02', 1100, '2011-02-03', '2011-02-13', 'Note2'),
(3, 3, '2012-03-03', 1200, '2012-03-04', '2023-01-14', 'Note3'),
(4, 4, '2013-04-04', 1300, '2013-04-05', '2013-04-15', 'Note4'),
(5, 5, '2014-05-05', 1400, '2014-05-06', '2014-05-16', 'Note5'),
(6, 6, '2015-06-06', 1500, '2015-06-07', '2015-06-17', 'Note6'),
(7, 7, '2016-07-07', 1600, '2016-07-08', '2016-07-18', 'Note7'),
(8, 8, '2017-08-08', 1700, '2017-08-09', '2017-08-19', 'Note8'),
(9, 9, '2018-09-09', 1800, '2018-09-10', '2023-04-20', 'Note9');

select * from QuoteResponse;

INSERT INTO ClientRespondToQuoteResponse (ContractorID, ResponseID, ResponseDate, Status, Note)
VALUES (1, 1, '2023-01-01', 'Accepted', 'abc'), 
(1, 2, '2023-02-02', 'Rejected', 'xyz'),
(1, 3, '2023-03-14', 'Accepted', 'wer');

select * from ClientRespondToQuoteResponse;

INSERT INTO ContractorRespondToClientResponse ( ContractorID, ClientResponseID, Status, ResponseDate, Note,ModifiedPrice,ModifiedWorkPeriodFrom,ModifiedWorkPeriodTo) 
VALUES 
(1, 1, 'Accepted', '2023-07-01', 'hi hello', 900, '2023-07-02', '2023-07-12'),
(1, 2, 'Accepted', '2023-08-02', 'bye bye', 800, '2023-08-03', '2023-08-13'),
(1, 3, 'Accepted', '2023-07-15', 'hi hi', 700, '2023-07-18','2023-07-20');

select * from ContractorRespondToClientResponse;

insert into OrderOfWork (RequestId, StartDate, EndDate, Status)
values 
(1, '2023-03-04', '2023-03-11', 'Accepted'),
(2, '2022-04-03', '2022-06-12', 'Pending');

select * from OrderOfWork;

insert into OrderOfWork (RequestId, StartDate, EndDate, Status)
values 
(3, '2000-03-04', '2000-03-11', 'Accepted');



