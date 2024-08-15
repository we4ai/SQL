CREATE DATABASE sports_management;
use sports_management;

CREATE TABLE teams (
    team_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(80),
    city VARCHAR(80),
    playground VARCHAR(80),
    jersey_home_color VARCHAR(80),
    jersey_away_color VARCHAR(80)
);


CREATE TABLE managers (
    mgr_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(80),
    dob DATE,
    team_id VARCHAR(10),
    since DATE,
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);


CREATE TABLE players (
    player_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(80),
    dob DATE,
    jersey_no INTEGER,
    team_id VARCHAR(10),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);


CREATE TABLE referees (
    referee_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(80),
    dob DATE
);


CREATE TABLE matches (
    match_num VARCHAR(10) PRIMARY KEY,
    match_date DATE,
    host_team_id VARCHAR(10),
    guest_team_id VARCHAR(10),
    host_team_score INTEGER,
    guest_team_score INTEGER,
    FOREIGN KEY (host_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (guest_team_id) REFERENCES teams(team_id)
);


CREATE TABLE match_referees (
    match_num VARCHAR(10),
    referee VARCHAR(10),
    assistant_referee_1 VARCHAR(10),
    assistant_referee_2 VARCHAR(10),
    fourth_referee VARCHAR(10),
    PRIMARY KEY (match_num),
    FOREIGN KEY (match_num) REFERENCES matches(match_num),
    FOREIGN KEY (referee) REFERENCES referees(referee_id),
    FOREIGN KEY (assistant_referee_1) REFERENCES referees(referee_id),
    FOREIGN KEY (assistant_referee_2) REFERENCES referees(referee_id),
    FOREIGN KEY (fourth_referee) REFERENCES referees(referee_id)
);







INSERT INTO teams (team_id, name, city, playground, jersey_home_color, jersey_away_color) VALUES
('T001', 'Warriors', 'San Francisco', 'Chase Center', 'Blue', 'White'),
('T002', 'Lakers', 'Los Angeles', 'Staples Center', 'Yellow', 'Purple'),
('T003', 'Celtics', 'Boston', 'TD Garden', 'Green', 'White'),
('T004', 'Bulls', 'Chicago', 'United Center', 'Red', 'Black'),
('T005', 'Knicks', 'New York', 'Madison Square Garden', 'Blue', 'Orange'),
('T006', 'Heat', 'Miami', 'FTX Arena', 'Red', 'White'),
('T007', 'Spurs', 'San Antonio', 'AT&T Center', 'Silver', 'Black'),
('T008', 'Raptors', 'Toronto', 'Scotiabank Arena', 'Red', 'Black'),
('T009', 'Mavericks', 'Dallas', 'American Airlines Center', 'Blue', 'White'),
('T010', '76ers', 'Philadelphia', 'Wells Fargo Center', 'Blue', 'Red'),
('T011', 'Rockets', 'Houston', 'Toyota Center', 'Red', 'White'),
('T012', 'Thunder', 'Oklahoma City', 'Paycom Center', 'Blue', 'Orange'),
('T013', 'Jazz', 'Salt Lake City', 'Vivint Arena', 'Purple', 'White'),
('T014', 'Nuggets', 'Denver', 'Ball Arena', 'Navy', 'White'),
('T015', 'Trail Blazers', 'Portland', 'Moda Center', 'Red', 'Black'),
('T016', 'Suns', 'Phoenix', 'Footprint Center', 'Purple', 'Orange'),
('T017', 'Clippers', 'Los Angeles', 'Crypto.com Arena', 'Red', 'Blue'),
('T018', 'Hornets', 'Charlotte', 'Spectrum Center', 'Teal', 'Purple'),
('T019', 'Wizards', 'Washington, D.C.', 'Capital One Arena', 'Red', 'Blue'),
('T020', 'Pistons', 'Detroit', 'Little Caesars Arena', 'Blue', 'Red'),
('T021', 'Magic', 'Orlando', 'Amway Center', 'Blue', 'White'),
('T022', 'Bucks', 'Milwaukee', 'Fiserv Forum', 'Green', 'White'),
('T023', 'Hawks', 'Atlanta', 'State Farm Arena', 'Red', 'Black'),
('T024', 'Grizzlies', 'Memphis', 'FedExForum', 'Navy', 'Teal'),
('T025', 'Timberwolves', 'Minneapolis', 'Target Center', 'Green', 'Blue'),
('T026', 'Pelicans', 'New Orleans', 'Smoothie King Center', 'Navy', 'Gold'),
('T027', 'Pacers', 'Indianapolis', 'Gainbridge Fieldhouse', 'Navy', 'Gold'),
('T028', 'Kings', 'Sacramento', 'Golden 1 Center', 'Purple', 'Black'),
('T029', 'Cavaliers', 'Cleveland', 'Rocket Mortgage FieldHouse', 'Wine', 'Gold'),
('T030', 'Nets', 'Brooklyn', 'Barclays Center', 'Black', 'White'),
('T031', 'Kings', 'Sacramento', 'Golden 1 Center', 'Purple', 'Black'),
('T032', 'Pandas', 'Chengdu', 'Sichuan Sports Center', 'Black', 'White'),
('T033', 'Eagles', 'Philadelphia', 'Lincoln Financial Field', 'Midnight Green', 'White'),
('T034', 'Seahawks', 'Seattle', 'Lumen Field', 'Navy', 'Action Green'),
('T035', 'Broncos', 'Denver', 'Empower Field at Mile High', 'Orange', 'Navy'),
('T036', 'Raiders', 'Las Vegas', 'Allegiant Stadium', 'Silver', 'Black'),
('T037', 'Cowboys', 'Dallas', 'AT&T Stadium', 'Navy', 'Silver'),
('T038', 'Patriots', 'New England', 'Gillette Stadium', 'Navy', 'Silver'),
('T039', 'Giants', 'New York', 'MetLife Stadium', 'Blue', 'White'),
('T040', 'Steelers', 'Pittsburgh', 'Heinz Field', 'Black', 'Gold'),
('T041', '49ers', 'San Francisco', 'Levis Stadium', 'Red', 'Gold'),
('T042', 'Packers', 'Green Bay', 'Lambeau Field', 'Green', 'Gold'),
('T043', 'Ravens', 'Baltimore', 'M&T Bank Stadium', 'Purple', 'Black'),
('T044', 'Bears', 'Chicago', 'Soldier Field', 'Navy', 'Orange'),
('T045', 'Bengals', 'Cincinnati', 'Paul Brown Stadium', 'Black', 'Orange'),
('T046', 'Lions', 'Detroit', 'Ford Field', 'Blue', 'Silver'),
('T047', 'Vikings', 'Minnesota', 'U.S. Bank Stadium', 'Purple', 'Gold'),
('T048', 'Texans', 'Houston', 'NRG Stadium', 'Deep Steel Blue', 'Battle Red'),
('T049', 'Chiefs', 'Kansas City', 'Arrowhead Stadium', 'Red', 'Gold'),
('T050', 'Dolphins', 'Miami', 'Hard Rock Stadium', 'Aqua', 'Orange');







INSERT INTO managers (mgr_id, name, dob, team_id, since) VALUES
('M001', 'Steve Kerr', '1965-09-27', 'T001', '2014-05-19'),
('M002', 'Frank Vogel', '1973-06-21', 'T002', '2021-07-12'),
('M003', 'Brad Stevens', '1976-10-22', 'T003', '2013-07-03'),
('M004', 'Billy Donovan', '1965-05-30', 'T004', '2015-05-19'),
('M005', 'Tom Thibodeau', '1958-01-17', 'T005', '2020-07-30'),
('M006', 'Erik Spoelstra', '1970-11-01', 'T006', '2008-04-28'),
('M007', 'Gregg Popovich', '1949-01-28', 'T007', '1996-12-10'),
('M008', 'Nick Nurse', '1967-07-24', 'T008', '2018-06-14'),
('M009', 'Jason Kidd', '1973-03-23', 'T009', '2021-06-28'),
('M010', 'Doc Rivers', '1961-10-13', 'T010', '2020-10-03'),
('M011', 'Stephen Silas', '1973-08-06', 'T011', '2020-10-30'),
('M012', 'Mark Daigneault', '1985-02-18', 'T012', '2020-11-11'),
('M013', 'Quin Snyder', '1966-10-30', 'T013', '2014-06-06'),
('M014', 'Michael Malone', '1971-09-15', 'T014', '2015-06-15'),
('M015', 'Chauncey Billups', '1976-09-25', 'T015', '2021-07-20'),
('M016', 'Monty Williams', '1971-10-08', 'T016', '2019-05-03'),
('M017', 'Tyronn Lue', '1977-05-03', 'T017', '2020-10-20'),
('M018', 'James Borrego', '1977-11-12', 'T018', '2018-05-10'),
('M019', 'Wes Unseld Jr.', '1975-09-20', 'T019', '2021-07-19'),
('M020', 'Dwane Casey', '1957-04-17', 'T020', '2018-06-11'),
('M021', 'Jamahl Mosley', '1978-10-06', 'T021', '2021-07-11'),
('M022', 'Mike Budenholzer', '1969-08-06', 'T022', '2018-05-17'),
('M023', 'Nate McMillan', '1964-08-03', 'T023', '2020-12-02'),
('M024', 'Taylor Jenkins', '1984-09-12', 'T024', '2019-06-11'),
('M025', 'Chris Finch', '1969-11-06', 'T025', '2021-02-22'),
('M026', 'Willie Green', '1981-07-28', 'T026', '2021-07-22'),
('M027', 'Rick Carlisle', '1959-10-27', 'T027', '2021-07-07'),
('M028', 'Alvin Gentry', '1954-11-05', 'T028', '2019-12-17'),
('M029', 'J.B. Bickerstaff', '1979-03-10', 'T029', '2019-12-20'),
('M030', 'Steve Nash', '1974-02-07', 'T030', '2020-09-03'),
('M031', 'Zhang Yi', '1968-05-12', 'T031', '2018-06-10'),
('M032', 'Li Qiang', '1975-11-04', 'T032', '2019-08-14'),
('M033', 'Doug Pederson', '1968-01-31', 'T033', '2016-01-18'),
('M034', 'Pete Carroll', '1951-09-15', 'T034', '2010-01-11'),
('M035', 'Vic Fangio', '1958-08-22', 'T035', '2019-01-10'),
('M036', 'Jon Gruden', '1963-08-17', 'T036', '2018-01-06'),
('M037', 'Mike McCarthy', '1963-11-10', 'T037', '2020-01-07'),
('M038', 'Bill Belichick', '1952-04-16', 'T038', '2000-01-27'),
('M039', 'Joe Judge', '1981-12-31', 'T039', '2020-01-08'),
('M040', 'Mike Tomlin', '1972-03-15', 'T040', '2007-01-22'),
('M041', 'Kyle Shanahan', '1979-12-14', 'T041', '2017-02-06'),
('M042', 'Matt LaFleur', '1979-11-03', 'T042', '2019-01-08'),
('M043', 'John Harbaugh', '1962-09-23', 'T043', '2008-01-19'),
('M044', 'Matt Nagy', '1978-04-24', 'T044', '2018-01-08'),
('M045', 'Zac Taylor', '1983-05-10', 'T045', '2019-02-04'),
('M046', 'Dan Campbell', '1976-04-13', 'T046', '2021-01-20'),
('M047', 'Mike Zimmer', '1956-06-05', 'T047', '2014-01-15'),
('M048', 'David Culley', '1955-09-17', 'T048', '2021-01-27'),
('M049', 'Andy Reid', '1958-03-19', 'T049', '2013-01-04'),
('M050', 'Brian Flores', '1981-02-24', 'T050', '2019-02-04'),
('M051', 'Robert Saleh', '1979-01-31', 'T051', '2021-01-14'),
('M052', 'Mike Vrabel', '1975-08-14', 'T052', '2018-01-20'),
('M053', 'Frank Reich', '1961-12-04', 'T053', '2018-02-11'),
('M054', 'Matt Rhule', '1975-01-31', 'T054', '2020-01-07'),
('M055', 'Bruce Arians', '1952-10-03', 'T055', '2019-01-08'),
('M056', 'Kliff Kingsbury', '1979-08-09', 'T056', '2019-01-08'),
('M057', 'Sean McVay', '1986-01-24', 'T057', '2017-01-12'),
('M058', 'Arthur Smith', '1982-05-27', 'T058', '2021-01-15'),
('M059', 'Sean Payton', '1963-12-29', 'T059', '2006-01-18'),
('M060', 'Ron Rivera', '1962-01-07', 'T060', '2020-01-01'),
('M061', 'Li Wei', '1972-08-03', 'T061', '2018-02-16'),
('M062', 'Chen Jian', '1983-11-12', 'T062', '2019-07-14'),
('M063', 'Zhao Lei', '1980-02-21', 'T063', '2020-03-20'),
('M064', 'Sun Min', '1975-06-19', 'T064', '2019-04-11'),
('M065', 'Liang Feng', '1979-09-09', 'T065', '2018-08-22'),
('M066', 'Wang Jian', '1970-01-01', 'T066', '2018-06-28'),
('M067', 'Yu Peng', '1987-12-24', 'T067', '2021-01-18'),
('M068', 'Liu Xin', '1974-10-15', 'T068', '2019-02-13'),
('M069', 'He Bin', '1982-11-05', 'T069', '2020-10-01'),
('M070', 'Xu Jing', '1978-03-27', 'T070', '2018-04-14'),
('M071', 'Guo Tao', '1975-07-07', 'T071', '2021-08-03'),
('M072', 'Yan Ming', '1983-04-28', 'T072', '2019-11-09'),
('M073', 'Luo Jin', '1986-12-19', 'T073', '2020-05-13'),
('M074', 'Wei Cheng', '1973-09-16', 'T074', '2018-09-29'),
('M075', 'Peng Xia', '1981-06-18', 'T075', '2020-06-20'),
('M076', 'Shen Feng', '1984-07-21', 'T076', '2021-07-12'),
('M077', 'Zhou Kai', '1976-05-30', 'T077', '2018-10-24'),
('M078', 'Huang Yue', '1977-08-08', 'T078', '2021-08-12'),
('M079', 'Zhu Ling', '1979-12-31', 'T079', '2019-09-07'),
('M080', 'Liang Rui', '1982-03-17', 'T080', '2020-04-22'),
('M081', 'Sun Yue', '1985-05-10', 'T081', '2021-01-11'),
('M082', 'Yuan Lei', '1980-11-08', 'T082', '2019-01-19'),
('M083', 'Huang Wei', '1978-04-16', 'T083', '2020-07-29'),
('M084', 'Tang Jie', '1981-02-12', 'T084', '2019-02-25'),
('M085', 'Fu Qiang', '1976-11-17', 'T085', '2018-11-15'),
('M086', 'Qian Ming', '1982-09-28', 'T086', '2020-03-03'),
('M087', 'Meng Liang', '1973-10-11', 'T087', '2019-10-19'),
('M088', 'Hua Li', '1987-01-01', 'T088', '2021-04-27'),
('M089', 'Yang Tao', '1978-02-14', 'T089', '2018-12-08'),
('M090', 'Xu Hong', '1979-07-19', 'T090', '2020-06-03'),
('M091', 'Zeng Bo', '1981-01-27', 'T091', '2019-07-05'),
('M092', 'Ma Li', '1984-10-20', 'T092', '2021-02-23'),
('M093', 'Tian Fang', '1986-03-11', 'T093', '2020-01-16'),
('M094', 'Zhang Wei', '1977-11-13', 'T094', '2018-10-05'),
('M095', 'Wang Li', '1976-06-25', 'T095', '2021-03-08'),
('M096', 'Gao Ming', '1975-12-23', 'T096', '2019-05-17'),
('M097', 'Luo Wei', '1982-08-06', 'T097', '2020-08-21'),
('M098', 'Jin Tao', '1981-09-29', 'T098', '2019-04-09'),
('M099', 'Liu Hong', '1980-05-22', 'T099', '2018-09-04'),
('M100', 'Wang Ping', '1979-10-12', 'T100', '2020-11-02');

