-- Project 1
-- Randy Lirano
-- 07/04/2021

-- The following is the data definition section for my database
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Decision" (
	"decision_id"	INTEGER NOT NULL,
	"decision_desc"	TEXT NOT NULL,
	PRIMARY KEY("decision_id" AUTOINCREMENT)
);
INSERT INTO Decision VALUES(1,'hired');
INSERT INTO Decision VALUES(2,'rejected');
CREATE TABLE IF NOT EXISTS "Applicant" (
	"applicant_id"	INTEGER NOT NULL,
	"first_name"	TEXT,
	"last_name"	TEXT,
	"email"	TEXT,
	"phone_number"	TEXT,
	PRIMARY KEY("applicant_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Posting" (
	"posting_id"	INTEGER NOT NULL,
	"position"	TEXT,
	"posting_date"	TEXT,
	"job_description"	TEXT,
	"annual_salary"	INTEGER,
	"minimum_qualification"	TEXT,
	PRIMARY KEY("posting_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Application" (
	"application_id"	INTEGER NOT NULL,
	"submission_date"	TEXT NOT NULL,
	"applicant_qualification"	TEXT NOT NULL,
	"decision_id"	INTEGER NOT NULL,
	"applicant_id"	INTEGER NOT NULL,
	FOREIGN KEY("decision_id") REFERENCES "Decision"("decision_id"),
	PRIMARY KEY("application_id" AUTOINCREMENT),
	FOREIGN KEY("applicant_id") REFERENCES "Applicant"("applicant_id")
);
CREATE TABLE IF NOT EXISTS "PostingApplication" (
	"posting_id"	INTEGER NOT NULL,
	"application_id"	INTEGER NOT NULL,
	PRIMARY KEY("posting_id","application_id"),
	FOREIGN KEY("posting_id") REFERENCES "Posting"("posting_id")
);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('Applicant',100);
INSERT INTO sqlite_sequence VALUES('Posting',100);
INSERT INTO sqlite_sequence VALUES('Decision',2);
INSERT INTO sqlite_sequence VALUES('Application',2);
COMMIT;
