/*
What does the file do?
This file appears to drop a table (if needed) and creates a fresh table to replace it, then inserts three rows of data

What is the output of the command? What does each line in this output mean?
The output is:
NOTICE:  table "films" does not exist, skipping --> the table if it exists is dropped, but the table did not exist
DROP TABLE --> indicates a table would be dropped
CREATE TABLE --> indicates a table is created
INSERT 0 1 --> Following lines indicate a row of data is created.
INSERT 0 1
INSERT 0 1

Open up the file and look at its contents. What does the first line do?
The first lien checks if a table of the name exists, if it does, it drops it. This is to avoid errors, as the following lines create a table by that name.
*/