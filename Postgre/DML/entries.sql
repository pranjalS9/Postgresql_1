insert into team (teamid, teamname, manager) values 
(1, 'Team A', 101), 
(2, 'Team B', 102),
(3, 'Team C', 103);

 
-- Insert values into the member table

 insert into members (memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender, phone) values
(101, 'Jack', 'Ryan', 1, '2023-01-03', NULL, 1, 'Male',19012564),
(102, 'George', 'Smith', 2, '2021-02-02', NULL, 2, 'Male',5901473),
(103, 'Elena', 'Dobres', 1, '2022-03-01', NULL, 1, 'Female',1034283543),
(104, 'James', 'Smith', 2, '2022-05-11', 101, 3, 'Male',12121212),
(105, 'Ron', 'Weasley', 2, '2023-04-01', 102, 2, 'Male',54343723434),
(106, 'Emma', 'Davis', 1, '2022-06-02', 101, 1, 'Female',NULL),
(107, 'Damon', 'Salvatore', 2, '2023-09-12', 103, 2, 'Male', 453243454),
(108,'Stefan','Dobres',1,'2023-09-12',102,2,'Male',NULL),
(109, 'Joe', 'Wobes', 2, '2023-09-12', 103, 2, 'Male', 453243454),
(110, 'Jaen', 'Wean', 2, '2023-09-12', 102, 2, 'Male', 745897738)


 insert into tournament_entry (memberid, tourid, year) values 
(101, 1, 2022),
(102, 1, 2021),
(103, 2, 2023),
(104, 3, 2023),
(105, 3, 2023),
(106, 2, 2021),
(107, 2, 2021),
(108, 3, 2022)

 insert into membertype (id, type, fee) values
(1, 'Basic', 500),
(2, 'Premium', 200)


 insert into tournament (id, tour_name, tour_type, country, is_open) values 
(1, 'Tour 1', 'Type A', 'India', true),
(2, 'Tour 2', 'Type B', 'Switzerland', false),
(3, 'Tour 3', 'Type C', 'UK', false),
(4, 'Tour 4', 'Type D', 'US', true);

