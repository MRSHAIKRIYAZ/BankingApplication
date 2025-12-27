🏦 Banking Application

A Java-based Banking System that simulates core banking operations like account creation, deposits, withdrawals, transfers, and balance inquiries.
The application is built using Java (Servlets, JSP), integrates with a MySQL database, and runs on Apache Tomcat.

✨ Features

🔑 User Registration & Login – Secure customer onboarding with unique account numbers.
💰 Deposit & Withdrawal – Manage account funds with proper validation.
🔄 Fund Transfer – Transfer money between accounts.
📊 Balance Inquiry – Check current account balance anytime.
🧾 Transaction History – View detailed records of all deposits, withdrawals, and transfers.
🗄️ Database Integration – Stores customer details and transactions in MySQL.
✅ Validation – Prevents duplicate account numbers or customer IDs during registration.

🛠️ Tech Stack

Programming Language: Java (Core Java, Servlets, JSP)
Database: MySQL
Frontend: JSP, HTML, CSS
Server: Apache Tomcat

IDE: Eclipse
⚙️ Setup Instructions

Prerequisites

Install Java JDK 8+
Install MySQL (ensure username and password are set to root)
Install Apache Tomcat (v9+)
Install Eclipse IDE (or any Java IDE)
Database Setup
Run the following SQL commands in MySQL:

-- Create Database

CREATE DATABASE BankApplication;
USE BankApplication;

-- Table to store customer details
CREATE TABLE ABCBank (
    name VARCHAR(100),
    custid VARCHAR(50) UNIQUE,
    accno VARCHAR(20) UNIQUE,
    pwd VARCHAR(50),
    balance DOUBLE,
    email VARCHAR(100)
);

-- Table to store transactions
CREATE TABLE GetStatement (
    accno VARCHAR(20),
    raccno VARCHAR(20),
    balance DOUBLE
);

-- Insert a sample user (for testing)
INSERT INTO ABCBank (name, custid, accno, pwd, balance, email)
VALUES ('Test User', 'C001', 'A1001', 'test123', 5000.00, 'test@example.com');
🚀 Running the Application
1️⃣ Clone the repository:
git clone https://https://github.com/MRSHAIKRIYAZ/BankingApplication.git
2️⃣ Open in Eclipse
Open Eclipse IDE
Import project as Dynamic Web Project
3️⃣ Configure Tomcat Server
Add and configure Apache Tomcat in Eclipse
4️⃣ Database Setup
Open MySQL and create a database:
CREATE DATABASE BankApplication;
Update your database connection details in the project (Default: root / root)
5️⃣ Run the Project
Right-click the project → Run on Server
Open your browser and go to:
http://localhost:8080/BankingApplication
🔐 Usage
Sample Login Credentials:
Customer ID: C001
Account No: A1001
Password: test123
Available Operations:
✔️ Check Balance
✔️ Deposit or Withdraw Money
✔️ Transfer Funds to Another Account
✔️ View Transaction History
🤝 Contribution
Contributions are welcome!

Fork the repository
Create a feature branch
git checkout -b feature-name
Commit your changes
git commit -m "Add new feature"
Push to your branch
git push origin feature-name
Open a Pull Request
📜 License
This project is licensed under the MIT License – feel free to use and modify it.

👨‍💻 Author
Riyaz Shaik

📧 Email: shaikriyaz1469@gmail.com
📞 Phone: +91 6309561761
