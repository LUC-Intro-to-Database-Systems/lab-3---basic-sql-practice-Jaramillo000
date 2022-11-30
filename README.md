# Lab 3 - SQL Practice in MySQL Workbench
This lab will meet the following objectives:

1.  Write SQL commands to create database objects such as tables, indexes, and views as well as commands to define access rights to those database objects.

2.  Write SQL commands to insert, update, delete, and retrieve data within the database tables.

## Instructions
For this lab, you will practice writing SQL commands that create tables, insert, delete, update and retrieve data.  Using the ER model below, you will re-create the model in MySQL workbench and insert the data found in the provided text files of this repository.  

![alt text](https://instructorc.github.io/site/slides/database/images/general/table_view.PNG)

You will record your relationships within this readme file.  When writing down the relationships, make sure to adhere to the following bullet points below.


## Requirements

### Deliverable 1 - Data Definition Language (5 Points)
1 Recreate the database schema identified above.  You can do this one of two ways.  You can use the Modeling tool in Workbench or you can write the SQL commands to create the database and related tables.  Whether you create the database schema using the database modeling tool in MySQL workbench or you create via command line, you will need to provide the commands used to create the database and related tables.  You can include those commands within the file you will use for deliverable 2.  
  1. Make sure all of the relationships are properly configured
  2. Make sure the primary key is specified and auto increments for both the **CLIENT** and **POLICY** table
  3. Make sure all columns in the database are marked as NOT NULL
  4. Enforce that the relationship between **CLIENT** and **POLICY** are strong and enforce cascading if either a **CLIENT** or **POLICY** is deleted.
  5. Include the SQL commands used for creating the database and tables into the file you will use for deliverable 2.


### Deliverable 2 - Data Manipulation Language (10 Points)
Create a file called **lab3.sql** and add the following queries into the file.  You will need to take a screenshot of the rendered output for each command and place a screenshot of your output beneath the example output provided.  Make sure to place a SQL comment above each command identifying the query.  In order to make changes to the data, you may need to change the SQL Editor settings.  You can do this by navigating to EDIT -> SQL Editor -> and unchecking Safe Updates. It is advised to restart MySQL Workbench after changing this setting.
<br>First, write the SQL commands to insert data into each of the tables. Your insert statements should also be included in the lab2.sql file.  **The data files are listed in the repository for this lab**
1.  Write the SQL command to list all clients and all the columns pertaining to a client.  The intended output is below.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/1.PNG" width="350" alt="output query 1"/>
<img width="508" alt="image" src="https://user-images.githubusercontent.com/117416929/204698457-4afd667b-61b9-448e-adda-7dfacfce465e.png">

2.  Write the SQL command to change client Chris Isaac to Chris Pearson.  No output for this command

3.  Write the SQL command to display all policies that have a policy type of 'Home'.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/3.PNG" width="300" alt="output query 3"/>
<img width="410" alt="image" src="https://user-images.githubusercontent.com/117416929/204698621-08687ddc-9e17-4cef-bea5-5eac07a5fb43.png">


4.  Write the SQL command to display all columns for policies that have yearly terms
<img src="https://instructorc.github.io/site/slides/database/images/lab3/4.PNG" width="300" alt="output query 4"/>
<img width="403" alt="image" src="https://user-images.githubusercontent.com/117416929/204698722-d2f4a84e-894c-4828-b414-f6c9d1566411.png">


5.  Write the SQL command that displays the client name, address, and age sorted by age in descending order in the figure below
<img src="https://instructorc.github.io/site/slides/database/images/lab3/5.PNG" width="300" alt="output query 5"/>
<img width="430" alt="image" src="https://user-images.githubusercontent.com/117416929/204698772-8d431c8e-5639-4548-992f-c20e43c40dd0.png">


6.  Write the SQL command that calculates the average age of all clients
<img src="https://instructorc.github.io/site/slides/database/images/lab3/6.PNG" width="90" alt="output query 6"/>
<img width="392" alt="image" src="https://user-images.githubusercontent.com/117416929/204698832-a9157091-2fbb-4e3b-b026-0866bdd7bbdc.png">

7.  Write the SQL command that lists the name and age of clients who are between the ages of 22 and 40
<img src="https://instructorc.github.io/site/slides/database/images/lab3/7.PNG" width="180" alt="output query 7"/>
<img width="412" alt="image" src="https://user-images.githubusercontent.com/117416929/204698882-4ce73066-4267-40bd-8d54-70df3452759b.png">

8.  Write the SQL command that lists all home policies that have a policy limit under $250,000.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/8.PNG" width="270" alt="output query 8"/>
<img width="422" alt="image" src="https://user-images.githubusercontent.com/117416929/204699008-8f637959-2500-4f2a-8453-0aebdbd39880.png">

9.  Write the SQL  command that lists the client's name and address for all addresses that contain 'Featherstone' and order by age in ascending order.
<img src="https://instructorc.github.io/site/slides/database/images/lab3/9.PNG" width="200" alt="output query 9"/>
<img width="510" alt="image" src="https://user-images.githubusercontent.com/117416929/204699061-66405417-c73b-419b-a9a5-34bf06ec5de4.png">

10.  Write the SQL command that lists the name, address, and age of clients who are age 35 and above and whose address contains the number 8
<img src="https://instructorc.github.io/site/slides/database/images/lab3/10.PNG" width="300" alt="output query 10"/>
<img width="545" alt="image" src="https://user-images.githubusercontent.com/117416929/204699104-79211446-acc3-4f63-8847-ee1f793ee445.png">

11.  Write the SQL command that returns the total # of policies offered
<img src="https://instructorc.github.io/site/slides/database/images/lab3/11.PNG" width="80" alt="output query 11"/>
<img width="460" alt="image" src="https://user-images.githubusercontent.com/117416929/204699150-86fcc337-3e46-40c7-8b85-f3267a44c232.png">

12.  Write the SQL command that returns the policy type and the total count of policies by type
<img src="https://instructorc.github.io/site/slides/database/images/lab3/12.PNG" width="170" alt="output query 12"/>
<img width="542" alt="image" src="https://user-images.githubusercontent.com/117416929/204699192-ab005ddd-d843-4627-ad2d-d7b012ddb0d6.png">

13.  Write the SQL command that returns the youngest and oldest client
<img src="https://instructorc.github.io/site/slides/database/images/lab3/13.PNG" width="170" alt="output query 13"/>
<img width="519" alt="image" src="https://user-images.githubusercontent.com/117416929/204699242-18eb9281-346d-49d2-87e6-2cc05abb3c69.png">

14.  Write the SQL command that lists all clients that have a home insurance policy<img width="514" alt="image" src="https://user-
<img src="https://instructorc.github.io/site/slides/database/images/lab3/14.PNG" width="450" alt="output query 14"/>


15.  Write the SQL command that lists all of the instances of a policy where the client ID is equal to #2
<img src="https://instructorc.github.io/site/slides/database/images/lab3/15.PNG" width="450" alt="output query 15"/>
<img width="494" alt="image" src="https://user-images.githubusercontent.com/117416929/204710358-63560e96-252d-4477-8f58-f309161ab877.png">


### Extra Credit (2 Points)
List all clients along with their respective policies.<br>
<img src="https://instructorc.github.io/site/slides/database/images/lab3/ec.PNG" width="550" alt="output query Extra credit"/>

![image](https://user-images.githubusercontent.com/117416929/204711448-70c1e10c-63de-4fd3-8e44-f55367951f93.png)


## Submission Guidelines

For this lab, you will submit 2 items to the repository that has been assigned to you.  The two items that you will need to submit are listed below: 
1. The README.MD file that includes screenshots of the result grid window for each SQL query
   1. Include the image beneath the output image I provide

2. The **lab3.sql** file.  The lab3.sql file should be uploaded to your repository

Once you have completed both of the items above, you will need to submit the link to your repository for lab3 prior to the due date and time listed.  Make sure you receive an email confirmation notifying you that the assignment has been submitted.


## Lab Resources
- [W3 Schools SQL tutorial](https://www.w3schools.com/sql/)
- [Make a ReadMe file Web-based Editor](https://www.makeareadme.com/)











