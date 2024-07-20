-- Create Table with TicketPrice Column
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(50),
    Age INT,
    DepartureCity VARCHAR(50),
    ArrivalCity VARCHAR(50),
    TicketPrice DECIMAL(10, 2)
);

-- Data Insertion with TicketPrice
INSERT INTO Passengers (Name, Age, DepartureCity, ArrivalCity, TicketPrice) VALUES
('Alice', 25, 'New York', 'Los Angeles', 350.00),
('Bob', 30, 'London', 'Paris', 150.00),
('Emily', 28, 'Sydney', 'Tokyo', 400.00),
('Daniel', 35, 'Beijing', 'Shanghai', 200.00),
('Olivia', 22, 'Toronto', 'Vancouver', 250.00),
('Ava', 31, 'Miami', 'Orlando', 100.00),
('Isaac', 40, 'Chicago', 'Houston', 300.00),
('Eleanor', 27, 'Madrid', 'Barcelona', 150.00),
('Austin', 29, 'Dallas', 'Austin', 80.00),
('Isabella', 26, 'Rome', 'Milan', 200.00),
('Sophia', 23, 'Berlin', 'Munich', 180.00),
('Liam', 32, 'Sydney', 'Melbourne', 250.00),
('Charlotte', 29, 'Paris', 'Rome', 200.00),
('Noah', 33, 'Los Angeles', 'San Francisco', 150.00),
('Amelia', 26, 'London', 'Edinburgh', 120.00),
('Ethan', 30, 'Tokyo', 'Osaka', 100.00),
('Harper', 28, 'Toronto', 'Montreal', 180.00),
('Mason', 34, 'Chicago', 'Atlanta', 220.00),
('Evelyn', 27, 'Madrid', 'Lisbon', 170.00),
('Benjamin', 31, 'New York', 'Washington D.C.', 160.00),
('Mia', 24, 'Barcelona', 'Valencia', 130.00),
('Alexander', 35, 'Houston', 'Dallas', 150.00),
('Abigail', 25, 'Miami', 'Tampa', 110.00),
('James', 36, 'Sydney', 'Brisbane', 200.00),
('Scarlett', 30, 'Paris', 'Lyon', 140.00),
('Logan', 37, 'Los Angeles', 'Las Vegas', 130.00),
('Lily', 31, 'London', 'Dublin', 180.00),
('Elijah', 38, 'Tokyo', 'Kyoto', 120.00),
('Aria', 32, 'Toronto', 'Ottawa', 160.00),
('Oliver', 39, 'Chicago', 'Detroit', 200.00),
('Grace', 33, 'Madrid', 'Seville', 150.00),
('William', 40, 'New York', 'Philadelphia', 120.00),
('Zoey', 34, 'Barcelona', 'Malaga', 140.00),
('Michael', 41, 'Houston', 'San Antonio', 150.00),
('Nora', 35, 'Miami', 'Fort Lauderdale', 100.00),
('Jack', 42, 'Sydney', 'Adelaide', 220.00),
('Penelope', 36, 'Paris', 'Marseille', 150.00),
('Lucas', 43, 'Los Angeles', 'San Diego', 180.00),
('Hannah', 37, 'London', 'Manchester', 170.00),
('Henry', 44, 'Tokyo', 'Nagoya', 130.00),
('Elizabeth', 38, 'Toronto', 'Quebec City', 200.00),
('Jacob', 45, 'Chicago', 'Minneapolis', 180.00),
('Avery', 39, 'Madrid', 'Valencia', 140.00),
('Alexander', 46, 'New York', 'Boston', 150.00),
('Ella', 40, 'Barcelona', 'Madrid', 150.00),
('Matthew', 47, 'Houston', 'Austin', 120.00),
('Addison', 41, 'Miami', 'Jacksonville', 130.00),
('Sebastian', 48, 'Sydney', 'Perth', 250.00),
('Ellie', 42, 'Paris', 'Bordeaux', 140.00),
('Daniel', 49, 'Los Angeles', 'Portland', 200.00),
('Victoria', 43, 'London', 'Glasgow', 160.00),
('Andrew', 50, 'Tokyo', 'Hiroshima', 150.00),
('Mila', 44, 'Toronto', 'Vancouver', 250.00),
('David', 51, 'Chicago', 'St. Louis', 180.00),
('Avery', 45, 'Madrid', 'Bilbao', 140.00),
('Joseph', 52, 'New York', 'Chicago', 200.00),
('Luna', 46, 'Barcelona', 'Ibiza', 170.00),
('Ethan', 53, 'Houston', 'San Francisco', 220.00),
('Leah', 47, 'Miami', 'Key West', 120.00),
('Jackson', 54, 'Sydney', 'Brisbane', 200.00),
('Layla', 48, 'Paris', 'Nice', 140.00),
('Gabriel', 55, 'Los Angeles', 'Las Vegas', 130.00),
('Nora', 49, 'London', 'Dublin', 180.00),
('Christopher', 56, 'Tokyo', 'Osaka', 100.00),
('Harper', 50, 'Toronto', 'Ottawa', 160.00),
('Ava', 57, 'Chicago', 'Detroit', 200.00),
('Eleanor', 51, 'Madrid', 'Seville', 150.00),
('Benjamin', 58, 'New York', 'Philadelphia', 120.00),
('Stella', 52, 'Barcelona', 'Malaga', 140.00),
('Samuel', 59, 'Houston', 'San Antonio', 150.00),
('Clara', 53, 'Miami', 'Fort Lauderdale', 100.00),
('William', 60, 'Sydney', 'Adelaide', 220.00),
('Grace', 54, 'Paris', 'Marseille', 150.00),
('Logan', 61, 'Los Angeles', 'San Diego', 180.00),
('Penelope', 55, 'London', 'Manchester', 170.00),
('Elijah', 62, 'Tokyo', 'Nagoya', 130.00),
('Scarlett', 56, 'Toronto', 'Quebec City', 200.00),
('Oliver', 63, 'Chicago', 'Minneapolis', 180.00),
('Mia', 57, 'Madrid', 'Valencia', 140.00),
('Aiden', 64, 'New York', 'Boston', 150.00),
('Zoey', 58, 'Barcelona', 'Madrid', 150.00),
('Carter', 65, 'Houston', 'Austin', 120.00),
('Sofia', 59, 'Miami', 'Jacksonville', 130.00),
('Ethan', 66, 'Sydney', 'Perth', 250.00),
('Chloe', 60, 'Paris', 'Bordeaux', 140.00),
('Jackson', 67, 'Los Angeles', 'Portland', 200.00),
('Emily', 61, 'London', 'Glasgow', 160.00),
('Mason', 68, 'Tokyo', 'Hiroshima', 150.00),
('Harper', 62, 'Toronto', 'Vancouver', 250.00),
('Lucas', 69, 'Chicago', 'St. Louis', 180.00),
('Abigail', 63, 'Madrid', 'Bilbao', 140.00),
('Noah', 70, 'New York', 'Chicago', 200.00),
('Amelia', 64, 'Barcelona', 'Ibiza', 170.00),
('Michael', 71, 'Houston', 'San Francisco', 220.00),
('Evelyn', 65, 'Miami', 'Key West', 120.00),
('Liam', 72, 'Sydney', 'Brisbane', 200.00),
('Charlotte', 66, 'Paris', 'Nice', 140.00),
('Daniel', 73, 'Los Angeles', 'Las Vegas', 130.00),
('Isabella', 67, 'London', 'Dublin', 180.00),
('Alexander', 74, 'Tokyo', 'Osaka', 100.00),
('Ava', 68, 'Toronto', 'Ottawa', 160.00),
('Benjamin', 75, 'Chicago', 'Detroit', 200.00),
('Emily', 69, 'Madrid', 'Seville', 150.00),
('Mia', 76, 'New York', 'Philadelphia', 120.00),
('Oliver', 70, 'Barcelona', 'Malaga', 140.00),
('Sophia', 77, 'Houston', 'San Antonio', 150.00),
('Harper', 71, 'Miami', 'Fort Lauderdale', 100.00),
('Noah', 78, 'Sydney', 'Adelaide', 220.00),
('Amelia', 72, 'Paris', 'Marseille', 150.00),
('Liam', 79, 'Los Angeles', 'San Diego', 180.00),
('Charlotte', 73, 'London', 'Manchester', 170.00),
('Ethan', 80, 'Tokyo', 'Nagoya', 130.00),
('Evelyn', 74, 'Toronto', 'Quebec City', 200.00),
('Mason', 81, 'Chicago', 'Minneapolis', 180.00),
('Harper', 75, 'Madrid', 'Valencia', 140.00),
('William', 82, 'New York', 'Boston', 150.00),
('Mia', 76, 'Barcelona', 'Madrid', 150.00),
('Michael', 83, 'Houston', 'Austin', 120.00),
('Emily', 77, 'Miami', 'Jacksonville', 130.00),
('Alexander', 84, 'Sydney', 'Perth', 250.00),
('Ava', 78, 'Paris', 'Bordeaux', 140.00),
('Benjamin', 85, 'Los Angeles', 'Portland', 200.00),
('Charlotte', 79, 'London', 'Glasgow', 160.00),
('Daniel', 86, 'Tokyo', 'Hiroshima', 150.00),
('Isabella', 80, 'Toronto', 'Vancouver', 250.00),
('Liam', 87, 'Chicago', 'St. Louis', 180.00),
('Emily', 81, 'Madrid', 'Bilbao', 140.00),
('Sophia', 88, 'New York', 'Chicago', 200.00),
('Harper', 82, 'Barcelona', 'Ibiza', 170.00),
('Noah', 89, 'Houston', 'San Francisco', 220.00),
('Amelia', 83, 'Miami', 'Key West', 120.00),
('Oliver', 90, 'Sydney', 'Brisbane', 200.00),
('Charlotte', 84, 'Paris', 'Nice', 140.00),
('Ethan', 91, 'Los Angeles', 'Las Vegas', 130.00),
('Evelyn', 85, 'London', 'Dublin', 180.00),
('Mason', 92, 'Tokyo', 'Osaka', 100.00),
('Harper', 86, 'Toronto', 'Ottawa', 160.00),
('William', 93, 'Chicago', 'Detroit', 200.00),
('Mia', 87, 'Madrid', 'Seville', 150.00),
('Michael', 94, 'New York', 'Philadelphia', 120.00),
('Emily', 88, 'Barcelona', 'Malaga', 140.00),
('Ava', 95, 'Houston', 'San Antonio', 150.00),
('Benjamin', 89, 'Miami', 'Fort Lauderdale', 100.00),
('Charlotte', 96, 'Sydney', 'Adelaide', 220.00),
('Daniel', 90, 'Paris', 'Marseille', 150.00),
('Isabella', 97, 'Los Angeles', 'San Diego', 180.00),
('Liam', 91, 'London', 'Manchester', 170.00),
('Sophia', 98, 'Tokyo', 'Nagoya', 130.00),
('Harper', 92, 'Toronto', 'Quebec City', 200.00),
('Noah', 99, 'Chicago', 'Minneapolis', 180.00),
('Amelia', 93, 'Madrid', 'Valencia', 140.00),
('Oliver', 100, 'New York', 'Boston', 150.00),
('Charlotte', 94, 'Barcelona', 'Madrid', 150.00);
