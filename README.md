# DataAccessAndManagementProject

### Overview:
This repository is dedicated to the development and building of a school based DBMS to assist students with finding digital resources and help further their studies. 

### The Team
_Raji,
Jed,
Anuradha,
Yasar,
Zak,
Dallas_

### How to run:
1. Clone the repository: 'git clone https://github.com/ddkeating/DataAccessAndManagementProject'
2. Setup your MySQL server and connect.
3. Create a schema named 'schoolappdatabase'.
4. Open the repository and create a python virtual environment: 'py -m venv env'
5. Activate the virtual environment and install the required dependencies: 'pip install -r requirements.txt'
6. Configure database by making migrations: 'py manage.py makemigrations' followed by migrating 'py manage.py migrate'
7. The MySQL database should now be configured and you can execute the datainset.sql file included to populate the database.
8. Change the password underneath the database section in the schoolApp/settings.py file to your MySQL connection password.

#### You're now good to go!

> To have groups and roles configured, please skip step 6 and 7 and run the schoolAppDump.sql file instead to have predefined roles such as tutors, admins and students.
