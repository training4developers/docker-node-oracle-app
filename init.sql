DROP TABLE widgets;
DROP SEQUENCE widgets_seq;

CREATE TABLE widgets (
  ID           NUMBER(10)     NOT NULL,
  NAME         VARCHAR2(100)  NOT NULL,
  DESCRIPTION  VARCHAR2(200)  NOT NULL,
  COLOR        VARCHAR2(20)   NOT NULL,
  "SIZE"       VARCHAR2(20)   NOT NULL,
  QUANTITY     NUMBER(10)     NOT NULL
);

ALTER TABLE widgets ADD (
  CONSTRAINT widgets_pk PRIMARY KEY (ID));

CREATE SEQUENCE widgets_seq;

CREATE OR REPLACE TRIGGER widgets_bir
BEFORE INSERT ON widgets
FOR EACH ROW
WHEN (new.id IS NULL)
BEGIN
  :new.id := widgets_seq.NEXTVAL;
END;
/

INSERT INTO WIDGETS (NAME, DESCRIPTION, COLOR, "SIZE", QUANTITY)
VALUES('Small Red Widget', 'A small, red widget.', 'red', 'small', 100);

INSERT INTO WIDGETS (NAME, DESCRIPTION, COLOR, "SIZE", QUANTITY)
VALUES('Medium Green Widget', 'A medium, green widget.', 'green', 'medium', 200);

INSERT INTO WIDGETS (NAME, DESCRIPTION, COLOR, "SIZE", QUANTITY)
VALUES('Large Blue Widget', 'A large, blue widget.', 'blue', 'large', 50);
