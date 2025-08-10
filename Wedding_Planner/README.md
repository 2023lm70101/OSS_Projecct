# Wedding Planner Management System

A comprehensive Java-based web application for managing wedding planning services, built with Java Servlets, Hibernate ORM, and MySQL database.

## 🎯 Features

- **User Management**: Registration, and role-based access control
- **Wedding Booking**: Complete wedding booking and management system
- **Event Management**: Calendar-based event scheduling with FullCalendar integration
- **Gallery Management**: Photo and media management for weddings
- **Financial Management**: Payment tracking and budget management
- **Administrative Dashboard**: Comprehensive admin panel with analytics
- **Responsive Design**: Mobile-friendly interface built with Bootstrap

## 🛠️ Technology Stack

- **Backend**: Java Servlet, Hibernate ORM
- **Database**: MySQL
- **Frontend**: JSP, Bootstrap, jQuery
- **Build Tool**: Maven
- **Server**: Apache Tomcat

## 📋 Prerequisites

Before running this application, make sure you have the following installed:

- Java JDK 8 or higher
- Apache Maven 3.6+
- MySQL 8.0+
- Apache Tomcat 9.0+
- Git

## 🚀 Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/wedding-planner.git
cd wedding-planner
```

### 2. Database Setup
1. Create a MySQL database named `dbwedding`
2. Update database configuration in `src/main/resources/hibernate.cfg.xml`:
   ```xml
   <property name="connection.url">jdbc:mysql://localhost:3306/dbwedding</property>
   <property name="connection.username">your_username</property>
   <property name="connection.password">your_password</property>
   ```

### 3. Build the Project
```bash
mvn clean install
```

### 4. Deploy to Tomcat
1. Copy the generated WAR file from `target/Wedding_Planner.war` to Tomcat's `webapps` directory
2. Start Tomcat server
3. Access the application at `http://localhost:8080/Wedding_Planner`

## 📁 Project Structure

```
Wedding_Planner/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       ├── dao/           # Data Access Objects
│   │   │       ├── entities/      # Hibernate Entities
│   │   │       ├── helper/        # Utility Classes
│   │   │       └── servlets/      # Servlet Controllers
│   │   ├── resources/
│   │   │   └── hibernate.cfg.xml  # Hibernate Configuration
│   │   └── webapp/
│   │       ├── admin/             # Admin Panel
│   │       ├── css/               # Stylesheets
│   │       ├── js/                # JavaScript Files
│   │       ├── images/            # Static Images
│   │       └── WEB-INF/           # Web Configuration
│   └── test/                      # Test Files
├── target/                        # Compiled Files
├── pom.xml                        # Maven Configuration
└── README.md                      # This File
```

## 👥 User Roles

- **Administrator**: Full system access with user management capabilities
- **Organizer**: Wedding organizer with event management access
- **User**: Regular users who can book wedding services

## 🔧 Configuration

### Database Configuration
The application uses Hibernate for database operations. Configure your database settings in `src/main/resources/hibernate.cfg.xml`.

### Email Configuration
Update email settings in the application for notifications (if required).

## 🚀 Deployment

### Local Development
1. Run `mvn clean install`
2. Deploy to local Tomcat server
3. Access via `http://localhost:8080/Wedding_Planner`

### Production Deployment
1. Build the project: `mvn clean package`
2. Deploy the WAR file to your production Tomcat server
3. Configure production database settings
4. Set up SSL certificates for secure access

## 📊 Database Schema

The application includes the following main entities:
- Users and Authentication
- Wedding Bookings
- Events and Calendar
- Guest Management
- Gallery and Media
- Financial Records
- Wedding Categories

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



## 📞 Support

For support and questions:
- Create an issue in the GitHub repository
- Contact the development team

## 🔄 Version History

- **v1.0.0**: Initial release with core wedding planning features
- **v1.1.0**: Added gallery management and enhanced UI
- **v1.2.0**: Implemented calendar integration and event management

---

**Note**: Make sure to update the database configuration and other sensitive information before deploying to production. 
