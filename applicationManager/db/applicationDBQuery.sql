INSERT INTO Decision VALUES(1,'hired');
INSERT INTO Decision VALUES(2,'rejected');

INSERT INTO Application (submission_date, applicant_qualification, decision_id, applicant_id)
VALUES ("07/04/2021", "Java", 1, 1)

INSERT INTO Application (submission_date, applicant_qualification, decision_id, applicant_id)
VALUES ("07/05/2021", "Java", 1, 2)

INSERT INTO Application (submission_date, applicant_qualification, decision_id, applicant_id)
VALUES ("07/04/2021", "Java", 1, 3)

INSERT INTO Application (submission_date, applicant_qualification, decision_id, applicant_id)
VALUES ("07/06/2021", "Python", 2, 3)

INSERT INTO Application (submission_date, applicant_qualification, decision_id, applicant_id)
VALUES ("07/06/2021", "SQL", 1, 3)

INSERT INTO PostingApplication (posting_id, application_id)
VALUES (1, 1)

INSERT INTO PostingApplication (posting_id, application_id)
VALUES (1, 2)

INSERT INTO PostingApplication (posting_id, application_id)
VALUES (1, 3)

INSERT INTO PostingApplication (posting_id, application_id)
VALUES (12, 4)

-- shows applicants who has submitted application and the position they apply for
SELECT DISTINCT * FROM Applicant
	JOIN Application USING (applicant_id)
	JOIN PostingApplication USING (application_id)
	
-- count the number of openings for each position
SELECT
	position, COUNT(*)
FROM
	Posting
GROUP BY
	position;

-- select position that has received application
SELECT position FROM Posting
WHERE
	posting_id IN (
		SELECT posting_id FROM PostingApplication
)

-- select the position and the applicant
SELECT Posting.position, Applicant.first_name, Applicant.last_name from Posting
	JOIN PostingApplication
	JOIN Application
	JOIN Applicant
LIMIT 15

-- select all applicant that has been hired
SELECT first_name, last_name FROM Applicant
WHERE applicant_id iN (
	SELECT applicant_id FROM Application
	WHERE decision_id = 1
)