# Introduction

For my first year Computer Science module on databases, a business solution was designed and implemented using phpMyAdmin for a fictitious employment agency.

---

## Features

- 20 fully normalised entities, storing information on applicants, employers and job applications.
- SQL views for business requirements, including application feedback.
- Java application for database interaction.
  - **The application will not work for you as it requires to be run on a certain network.** Nonetheless, I've included it for you to have a look at.
- Comprehensive documentation.

---

## Screenshots

**An overview of the Applications table**
![Overview of the Applications table](https://github.com/Xelodico/random-resources/blob/main/images/csc1023%20databases%20project/phpMyAdmin.png?raw=true)

**The structure of the JobSeekers table**
![Structure of the JobSeekers table](https://github.com/Xelodico/random-resources/blob/main/images/csc1023%20databases%20project/jobseekers%20structure.png?raw=true)

**The JobSeekerApplicationStatus view**
![JobSeekerApplicationStatus view](https://github.com/Xelodico/random-resources/blob/main/images/csc1023%20databases%20project/jobseekerapplicationstatus%20view.png?raw=true)

**A snippet from the Java Database Connection**
![JDBC](https://github.com/Xelodico/random-resources/blob/main/images/csc1023%20databases%20project/jdbc.png?raw=true)

---

## Run on phpMyAdmin

1. To ensure that you don't lose your work, create an empty database.
2. Please follow this [tutorial](https://help.one.com/hc/en-us/articles/115005588189-How-do-I-import-a-database-to-phpMyAdmin#step-1) for step-by-step instructions on how to import my database (`schema.sql`).

---

## Documentation

[Data Dictionary](https://nbviewer.org/github/Xelodico/random-resources/blob/main/documents/csc1023%20databases%20project/dataDictionary.pdf)  

- Stores the database's metadata.

[ER Diagram](https://nbviewer.org/github/Xelodico/random-resources/blob/main/documents/csc1023%20databases%20project/erd.pdf)

- Features descriptions on the relationships between the entities in my database.
  
[SQL Views Queries and Java Database Connection](https://nbviewer.org/github/Xelodico/random-resources/blob/main/documents/csc1023%20databases%20project/query.pdf)

- Outlines the views and queries used for my database, detailing how the Java database connection was established, including example functions.
