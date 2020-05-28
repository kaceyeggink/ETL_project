CREATE TABLE avgattendance (
  Team VARCHAR (30) NOT NULL,
  Home_Games INT,
  Total_HG_Attendance INT,
  Avg_HG_Attendance INT,
  HG_PCT INT,
  Road_Games INT,
  AVG_RG_Attendance INT,
  RG_PCT INT,
  Total_Games INT,
  AVG_Total_Attendance INT,
  Combined_PCT INT,
  Team_id INT PRIMARY KEY
);

CREATE TABLE payroll (
  team VARCHAR(30) NOT NULL,
  payroll INT
  team_id INT PRIMARY KEY
);

CREATE TABLE forbestable (
  Team VARCHAR (30) NOT NULL,
  current_value INT,
  yrpct_change INT,
  debt_value INT,
  revenue INT,
  operating_income INT,
  team_id INT PRIMARY KEY
);


-- Joins tables
SELECT avgattendance.Team_id, avgattendance.Team, avgattendance.Home_Games, avgattendance.Total_HG_Attendance,avgattendance.Avg_HG_Attendance,forbestable.operating_income,forbestable.revenue
FROM avgattendance
FULL OUTER JOIN forbestable
ON avgattendance.team_id = forbestable.team_id;
