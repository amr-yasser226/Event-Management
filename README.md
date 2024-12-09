# Event Management Frontend

![GitHub Repo Size](https://img.shields.io/github/repo-size/yourusername/Event-Management-Frontend)
![GitHub Contributors](https://img.shields.io/github/contributors/yourusername/Event-Management-Frontend)
![GitHub Stars](https://img.shields.io/github/stars/yourusername/Event-Management-Frontend?style=social)
![GitHub License](https://img.shields.io/github/license/yourusername/Event-Management-Frontend)

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Upcoming Features](#upcoming-features)

## Overview

Welcome to the **Event Management Frontend** repository! This project serves as the user-facing interface for managing events, volunteers, attendees, and organizers. Built with **ASP.NET Core Razor Pages**, the frontend provides a seamless and intuitive experience for users to interact with the event management system.

## Features

- **User Authentication:**
  - **Login** and **Sign In** functionalities for Attendees, Volunteers, and Organizers.
  
- **Role-Based Navigation:**
  - Dynamic navigation options based on user roles.
  
- **Responsive Design:**
  - Mobile-friendly layout using Bootstrap for optimal viewing across devices.
  
- **Clean UI/UX:**
  - Intuitive and user-centric design ensuring ease of use.
  
- **Modular Structure:**
  - Organized folder structure for scalability and maintainability.

## Technologies Used

- **Frontend:**
  - [ASP.NET Core 8.0](https://dotnet.microsoft.com/en-us/download/dotnet/8.0) - Web framework for building modern web applications.
  - [Razor Pages](https://docs.microsoft.com/en-us/aspnet/core/razor-pages/?view=aspnetcore-8.0) - Simplified web development model for ASP.NET Core.
  - [Bootstrap 5](https://getbootstrap.com/) - CSS framework for responsive design.
  - [jQuery](https://jquery.com/) - JavaScript library for DOM manipulation.
  
- **Version Control:**
  - [Git](https://git-scm.com/) - Distributed version control system.
  - [GitHub](https://github.com/) - Hosting service for Git repositories.

- **Package Management:**
  - [LibMan](https://docs.microsoft.com/en-us/aspnet/core/client-side/libman/?view=aspnetcore-8.0) - Library Manager for managing client-side libraries.

## Project Structure

```
Frontend/
├── Pages/
│   ├── AuthChoice/
│   │   ├── AuthChoice.cshtml
│   │   └── AuthChoice.cshtml.cs
│   ├── User/
│   │   ├── Attendee/
│   │   │   ├── Login/
│   │   │   │   ├── AttendeeLogin.cshtml
│   │   │   │   └── AttendeeLogin.cshtml.cs
│   │   │   └── SignIn/
│   │   │       ├── AttendeeSignIn.cshtml
│   │   │       └── AttendeeSignIn.cshtml.cs
│   │   ├── Volunteer/
│   │   │   ├── Login/
│   │   │   │   ├── VolunteerLogin.cshtml
│   │   │   │   └── VolunteerLogin.cshtml.cs
│   │   │   └── SignIn/
│   │   │       ├── VolunteerSignIn.cshtml
│   │   │       └── VolunteerSignIn.cshtml.cs
│   │   └── Organizer/
│   │       ├── Login/
│   │       │   ├── OrganizerLogin.cshtml
│   │       │   └── OrganizerLogin.cshtml.cs
│   │       └── SignIn/
│   │           ├── OrganizerSignIn.cshtml
│   │           └── OrganizerSignIn.cshtml.cs
│   ├── Index.cshtml
│   └── _ViewImports.cshtml
├── wwwroot/
│   ├── css/
│   ├── js/
│   └── lib/
│       ├── bootstrap/
│       └── jquery/
├── Frontend.csproj
├── Program.cs
├── Startup.cs
├── .gitignore
├── .gitattributes
├── README.md
└── ... (other configuration files)
```

### Explanation

- **Pages/**: Contains all Razor Pages and their corresponding code-behind files.
  - **AuthChoice/**: Intermediate pages for authentication choices.
  - **User/**: Contains subdirectories for different user roles (Attendee, Volunteer, Organizer), each with their own Login and Sign In pages.
  
- **wwwroot/**: Holds static files like CSS, JavaScript, and client-side libraries.
  
- **Frontend.csproj**: Project file for the ASP.NET Core application.
  
- **Program.cs & Startup.cs**: Entry points and configuration for the application.
  
- **.gitignore & .gitattributes**: Git configuration files to manage ignored files and handle line endings.

## Installation

Follow these steps to set up the **Event Management Frontend** project locally.

### Prerequisites

- **.NET 8.0 SDK**  
  Download and install from [here](https://dotnet.microsoft.com/en-us/download/dotnet/8.0).

- **Git**  
  Download and install from [here](https://git-scm.com/downloads).

- **Visual Studio 2022** or **Visual Studio Code**  
  - [Visual Studio](https://visualstudio.microsoft.com/) (Recommended for full-featured IDE)
  - [Visual Studio Code](https://code.visualstudio.com/) (Lightweight editor)

### Steps

1. **Clone the Repository**

   Open your terminal or command prompt and run:

   ```bash
   git clone https://github.com/amr-yasser226/Event-Management-Frontend.git
   ```

   Replace `yourusername` with your actual GitHub username.

2. **Navigate to the Project Directory**

   ```bash
   cd Event-Management-Frontend
   ```

3. **Restore Dependencies**

   ```bash
   dotnet restore
   ```

4. **Build the Project**

   ```bash
   dotnet build
   ```

5. **Run the Application**

   ```bash
   dotnet run
   ```

6. **Access the Application**

   Open your web browser and navigate to [https://localhost:5001](https://localhost:5001) or [http://localhost:5000](http://localhost:5000).

## Usage

Once the application is running, you can navigate through the different user roles and perform actions such as logging in or signing up.

### User Roles

1. **Attendee**
   - **Attend**: Redirects to the authentication choice where you can **Login** or **Sign In**.
   
2. **Volunteer**
   - **Volunteer**: Redirects to the authentication choice where you can **Login** or **Sign In**.
   
3. **Organizer**
   - **Organize**: Redirects to the authentication choice where you can **Login** or **Sign In**.
   
4. **Vendor**
   - **Vendor**: Direct access to vendor-related functionalities.
   
5. **Sponsor**
   - **Sponsor**: Direct access to sponsorship-related functionalities.
   
6. **Donate**
   - **Donate**: Direct access to donation-related functionalities.

### Authentication Flow

1. **Select a User Role** (e.g., Attendee, Volunteer, Organizer).
2. **Choose an Action**:
   - **Login**: For existing users to access their accounts.
   - **Sign In**: For new users to register.

3. **Complete the Form**:
   - **Login**: Enter your email and password.
   - **Sign In**: Provide necessary registration details.

4. **Confirmation**:
   - Upon successful login or registration, you will be redirected to a **Thank You** page.

## Contributing

Contributions are welcome! Follow these steps to contribute to the project:

1. **Fork the Repository**

   Click the **Fork** button on the top right corner of the repository page.

2. **Clone Your Fork**

   ```bash
   git clone https://github.com/yourusername/Event-Management-Frontend.git
   ```

3. **Create a New Branch**

   ```bash
   git checkout -b feature/YourFeatureName
   ```

4. **Make Your Changes**

   Implement your feature or bug fix.

5. **Commit Your Changes**

   ```bash
   git commit -m "Add feature: YourFeatureName"
   ```

6. **Push to Your Fork**

   ```bash
   git push origin feature/YourFeatureName
   ```

7. **Create a Pull Request**

   Go to the original repository and click **New Pull Request**. Provide a clear description of your changes.

### Guidelines

- **Follow Coding Standards**: Ensure your code adheres to the project's coding standards and best practices.
- **Write Clear Commit Messages**: Use descriptive commit messages to explain your changes.
- **Test Your Changes**: Verify that your changes work as intended and do not introduce new issues.
- **Respect the Code of Conduct**: Maintain a respectful and collaborative environment.

## License

This project is licensed under the [MIT License](LICENSE).  
You are free to use, modify, and distribute this software under the terms of the MIT License.

## Upcoming Features

We are continuously working to enhance the **Event Management Frontend**. Here are some of the features planned for future releases:

1. **Backend Integration**
   - Seamless integration with the backend APIs for data management.
   - Implementing secure authentication and authorization using ASP.NET Core Identity.
   
2. **Enhanced User Profiles**
   - Allow users to update their profiles, manage preferences, and view activity history.
   
3. **Event Dashboard**
   - Comprehensive dashboard for organizers to manage events, view analytics, and coordinate with volunteers.
   
4. **Real-Time Notifications**
   - Implement real-time notifications using SignalR for instant updates on event changes, volunteer assignments, and more.
   
5. **Payment Integration**
   - Enable secure donations and sponsorship payments through integrated payment gateways.
   
6. **Responsive Enhancements**
   - Further improve mobile responsiveness and accessibility to ensure an inclusive user experience.
   
7. **Advanced Search and Filtering**
   - Implement advanced search functionalities to help users find events, volunteers, and organizers efficiently.
   
8. **Localization Support**
   - Add support for multiple languages to cater to a diverse user base.

Stay tuned for these exciting updates! Your feedback and contributions are highly appreciated to help shape the future of this project.

---

Thank you for using the **Event Management Frontend**! We hope it serves your needs effectively. If you encounter any issues or have suggestions, feel free to open an issue or submit a pull request.