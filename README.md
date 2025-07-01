# EasyLeaveApp - Employee Leave Management System

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E)

## 📋 Overview

**EasyLeaveApp** is a comprehensive web-based Employee Leave Management System (ELMS) designed to streamline and digitize the leave application process in organizations. Built with Java web technologies, it provides separate interfaces for administrators and employees to manage leave requests efficiently.

## ✨ Features

### 👨‍💼 Administrator Features
- **Dashboard** with comprehensive overview
- **Department Management**
  - Add and manage departments
  - Department code assignment
- **Employee Management**
  - Employee registration and profile management
  - Employee status tracking
- **Leave Type Management**
  - Create custom leave types (Sick, Vacation, Personal, etc.)
  - Manage leave descriptions
- **Leave Management**
  - Review all leave applications
  - Approve/reject leave requests
  - View pending, approved, and rejected leaves
  - Add administrative remarks

### 👨‍💻 Employee Features
- **Profile Management**
  - View personal profile
  - Update password
- **Leave Operations**
  - Apply for leave with date range selection
  - Select from available leave types
  - Track leave application status
  - View complete leave history
- **Dashboard**
  - Personal leave statistics
  - Quick access to common functions

## 🛠️ Technology Stack

### Backend
- **Java Servlets** - Server-side logic and request handling
- **JSP (JavaServer Pages)** - Dynamic web page generation
- **MySQL** - Database management
- **JDBC** - Database connectivity

### Frontend
- **HTML5** - Markup structure
- **CSS3** - Styling and layouts
- **JavaScript** - Client-side functionality
- **Materialize CSS** - Material Design framework
- **Material Icons** - UI iconography

### Development Tools
- **NetBeans IDE** - Development environment
- **Apache Ant** - Build automation
- **Apache Tomcat** - Application server

## 📁 Project Structure

```
EasyLeaveApp/
├── 📄 build.xml                     # Ant build configuration
├── 📁 Database/
│   └── 📄 elms.sql                  # Database schema and sample data
├── 📁 src/java/                     # Java source files
│   ├── 📄 login.java                # Employee authentication
│   ├── 📄 alogin.java               # Admin authentication
│   ├── 📄 addemp.java               # Employee management
│   ├── 📄 adddep.java               # Department management
│   └── 📄 addleave.java             # Leave type management
├── 📁 web/                          # Web resources
│   ├── 📄 index.html                # Employee login page
│   ├── 📄 dashboard.html            # Admin dashboard
│   ├── 📄 *.jsp                     # JSP pages
│   └── 📁 assets/                   # Static resources
│       ├── 📁 css/                  # Stylesheets
│       ├── 📁 js/                   # JavaScript files
│       └── 📁 images/               # Image assets
└── 📁 build/                        # Compiled output
```

## 🗄️ Database Schema

### Tables Overview
- **`admin`** - System administrators
- **`tbldepartments`** - Company departments
- **`tblemployees`** - Employee records
- **`tblleaves`** - Leave applications
- **`tblleavetype`** - Available leave types

### Leave Status System
- **0** - Pending approval ⏳
- **1** - Approved ✅
- **2** - Rejected ❌

## 🚀 Installation & Setup

### Prerequisites
- Java JDK 8 or higher
- Apache Tomcat 8.5+
- MySQL 5.7+
- NetBeans IDE (recommended)

### Step-by-Step Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/EasyLeaveApp.git
   cd EasyLeaveApp
   ```

2. **Database Setup**
   ```sql
   -- Create database
   CREATE DATABASE elms;
   
   -- Import the schema
   mysql -u root -p elms < Database/elms.sql
   ```

3. **Configure Database Connection**
   - Update database credentials in servlet files
   - Default connection: `localhost:3306/elms` with `root` user

4. **Build the Project**
   ```bash
   ant clean
   ant build
   ```

5. **Deploy to Tomcat**
   - Copy the generated WAR file to Tomcat's webapps directory
   - Or deploy directly from NetBeans

6. **Access the Application**
   - **Employee Portal**: `http://localhost:8080/EasyLeaveApp/`
   - **Admin Portal**: `http://localhost:8080/EasyLeaveApp/alogin.jsp`

## 🔐 Default Login Credentials

### Administrator
- **Username**: `admin`
- **Password**: `admin123`

### Sample Employee
- **Email**: `anuj@gmail.com`
- **Password**: `test` (MD5 hashed in database)

## 📱 User Interface

The application features a modern, responsive design using Material Design principles:

- **Collapsible Sidebar Navigation**
- **Responsive Data Tables**
- **Material Design Cards**
- **Interactive Forms with Validation**
- **Mobile-Friendly Layout**

## 🔄 Workflow

### Leave Application Process
1. **Employee** logs into the system
2. **Navigates** to "Apply Leave" section
3. **Selects** leave type from dropdown
4. **Specifies** date range (From/To)
5. **Provides** description/reason
6. **Submits** application
7. **Admin** reviews and approves/rejects
8. **Employee** receives notification of status

## 🔒 Security Notes

> ⚠️ **Important**: This project was developed for educational purposes. For production use, please implement:
> - Password hashing and encryption
> - SQL injection prevention
> - CSRF protection
> - Input validation and sanitization
> - Secure session management

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for bugs and feature requests.

### Development Guidelines
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📋 Future Enhancements

- [ ] **Security Improvements**
  - Password encryption
  - SQL injection prevention
  - Role-based access control
- [ ] **Modern Framework Migration**
  - Spring Boot integration
  - Hibernate ORM
  - REST API development
- [ ] **Enhanced Features**
  - Email notifications
  - Leave balance tracking
  - Calendar integration
  - Mobile application
- [ ] **Reporting System**
  - Leave analytics
  - Department-wise reports
  - Export functionality

## 📄 License

This project is an educational/internship project developed by Dhanush in 2025. Feel free to use, modify, and distribute this code for learning and educational purposes.

## 👥 Team

- **Developer**: Dhanush
- **Project Type**: Internship Project
- **Year**: 2025

## 📞 Support

For support, email dhanusha621@gmail.com or create an issue in this repository.

## 🙏 Acknowledgments

- Material Design for the UI framework
- NetBeans IDE for development environment
- MySQL for database management
- Apache Tomcat for application server

---

**⭐ Star this repository if you found it helpful!**
