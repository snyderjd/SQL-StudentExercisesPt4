-- Enter the SQL to create all of your tables, columns, and foreign key constraints.

--CREATE TABLE Album (
--    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--    Title VARCHAR(55) NOT NULL,
--    ReleaseDate VARCHAR(55) NOT NULL,
--    AlbumLength INTEGER NOT NULL,
--    Label VARCHAR(55) NOT NULL,
--    ArtistId INTEGER NOT NULL,
--    GenreId INTEGER,
--    CONSTRAINT FK_Album_Artist FOREIGN KEY(ArtistId) REFERENCES Artist(Id),
--    CONSTRAINT FK_Album_Genre FOREIGN KEY(GenreId) REFERENCES Genre(Id)
--);

 CREATE TABLE Cohort (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	Name VARCHAR(55) NOT NULL
);

CREATE TABLE Student (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	FirstName VARCHAR(55) NOT NULL,
	LastName VARCHAR(55) NOT NULL,
	SlackHandle VARCHAR(55) NOT NULL,
	CohortId INTEGER NOT NULL,
	CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE Exercise (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	Name VARCHAR(55) NOT NULL,
	Language VARCHAR(55) NOT NULL
);

CREATE TABLE StudentExercise (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	StudentId INTEGER NOT NULL,
	ExerciseId INTEGER NOT NULL,
	CONSTRAINT FK_StudentExercise_Student FOREIGN KEY (StudentId) REFERENCES Student(Id),
	CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY (ExerciseId) REFERENCES Exercise(Id)
);


CREATE TABLE Instructor (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	FirstName VARCHAR(55) NOT NULL,
	LastName VARCHAR(55) NOT NULL,
	CohortId INTEGER NOT NULL,
	Specialty VARCHAR(55) NOT NULL,
	SlackHandle VARCHAR(55) NOT NULL
	CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);


-- Use INSERT statements to populate each table with data
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
	--VALUES ('We Are Not Your Kind', '2019', 15, 'Acme Records', 1003, 2);

-- Create Cohorts
INSERT INTO Cohort (Name) VALUES ('Day 33');
INSERT INTO Cohort (Name) VALUES ('Day 34');
INSERT INTO Cohort (Name) VALUES ('Day 35');

-- Create Students
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Taylor', 'Carroll', 'TaylorC', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Caroline', 'Brownlee', 'CarolineB', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Alex', 'Rumsey', 'AlexR', 1);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Jane', 'Smith', 'JaneS', 1);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Brian', 'Wilson', 'BrianW', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Curtis', 'Crutchfield', 'CurtisC', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Joe', 'Snyder', 'JoeS', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Allie', 'Patton', 'AllieP', 2);

-- Create Instructors
INSERT INTO Instructor (FirstName, LastName, CohortId, Specialty, SlackHandle) VALUES ('Andy', 'Collins', 2, 'C#', 'AndyC');
INSERT INTO Instructor (FirstName, LastName, CohortId, Specialty, SlackHandle) VALUES ('Steve', 'Brownlee', 1, 'Python', 'SteveB');
INSERT INTO Instructor (FirstName, LastName, CohortId, Specialty, SlackHandle) VALUES ('Bryan', 'Nilsen', 2, 'High Fives', 'BryanN');
INSERT INTO Instructor (FirstName, LastName, CohortId, Specialty, SlackHandle) VALUES ('Jenna', 'Solis', 3, 'Public Typing', 'JennaS');

---- Create Exercises
INSERT INTO Exercise (Name, Language) VALUES ('Chicken Monkey', 'JavaScript');
INSERT INTO Exercise (Name, Language) VALUES ('FizzBuzz', 'JavaScript');
INSERT INTO Exercise (Name, Language) VALUES ('Kennel', 'JavaScript');
INSERT INTO Exercise (Name, Language) VALUES ('Diggers and Fliers', 'C#');
INSERT INTO Exercise (Name, Language) VALUES ('Heist Part 2', 'C#');

---- Assign 2-3 exercises to each student
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (4, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (4, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (6, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (6, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (7, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (7, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (8, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (8, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 3);






