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