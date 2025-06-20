# Event Management

![GitHub Repo Size](https://img.shields.io/github/repo-size/amr-yasser226/Event-Management-Frontend)
![GitHub Contributors](https://img.shields.io/github/contributors/amr-yasser226/Event-Management-Frontend)
![GitHub Stars](https://img.shields.io/github/stars/amr-yasser226/Event-Management-Frontend?style=social)
![GitHub License](https://img.shields.io/github/license/amr-yasser226/Event-Management-Frontend)

## Table of Contents

* [Overview](#overview)
* [Features](#features)
* [Technologies Used](#technologies-used)
* [Project Structure](#project-structure)
* [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Upcoming Features](#upcoming-features)

## Overview

Welcome to the **Event Management Frontend** repository! This project serves as the user-facing interface for managing events, volunteers, attendees, and organizers. Built with **ASP.NET Core Razor Pages**, the frontend provides a seamless and intuitive experience for users to interact with the event management system.

## Features

* **User Authentication:**

  * **Login** and **Sign In** functionalities for Attendees, Volunteers, Organizers, Sponsors, and Donors.
* **Role-Based Navigation:** Dynamic navigation options based on user roles.
* **Responsive Design:** Mobile-first layout using Bootstrap 5 for optimal viewing across devices.
* **Clean UI/UX:** Intuitive, user-centric design ensuring ease of use.
* **Modular Architecture:** Organized folder structure for scalability and maintainability.

## Technologies Used

* **Frontend:**

  * [ASP.NET Core 8.0](https://dotnet.microsoft.com/download/dotnet/8.0) – Web framework for modern applications.
  * [Razor Pages](https://docs.microsoft.com/aspnet/core/razor-pages) – Simplified page-based development.
  * [Bootstrap 5](https://getbootstrap.com/) – CSS framework for responsive design.
  * [jQuery](https://jquery.com/) – JavaScript library for DOM manipulation.
* **Version Control:**

  * [Git](https://git-scm.com/) – Distributed version control.
  * [GitHub](https://github.com/) – Repository hosting and collaboration.
* **Package Management:**

  * [LibMan](https://docs.microsoft.com/aspnet/core/client-side/libman) – Client-side library manager.

## Project Structure

```
Frontend/
├── Pages/
│   ├── AuthChoice/
│   │   ├── AuthChoice.cshtml
│   │   └── AuthChoice.cshtml.cs
│   ├── User/
│   │   ├── Attendee/
│   │   │   ├── Login/AttendeeLogin.cshtml
│   │   │   └── AttendeeLogin.cshtml.cs
│   │   ├── Volunteer/
│   │   │   ├── Login/VolunteerLogin.cshtml
│   │   │   └── VolunteerLogin.cshtml.cs
│   │   └── Organizer/
│   │       ├── Login/OrganizerLogin.cshtml
│   │       └── OrganizerLogin.cshtml.cs
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
├── LICENSE
├── README.md
└── ...
```

## Installation

### Prerequisites

* **.NET 8.0 SDK**: Install from [https://dotnet.microsoft.com/download/dotnet/8.0](https://dotnet.microsoft.com/download/dotnet/8.0)
* **Git**: Install from [https://git-scm.com/downloads](https://git-scm.com/downloads)
* **IDE**: Visual Studio 2022 or Visual Studio Code

### Setup

1. **Clone the Repo**

   ```bash
   ```

git clone [https://github.com/amr-yasser226/Event-Management-Frontend.git](https://github.com/amr-yasser226/Event-Management-Frontend.git)
cd Event-Management-Frontend

````
2. **Restore & Build**
   ```bash
dotnet restore
dotnet build
````

3. **Run**

   ```bash
   dotnet run
   ```


4. **Access**
   Open http://localhost:5000 or https://localhost:5001

## Usage

Navigate by role (Attendee, Volunteer, Organizer, Sponsor, Donor), choose **Login** or **Sign In**, complete the form, and proceed to the dashboard or thank-you page.

## Contributing

1. Fork the repo
2. Create a feature branch
3. Commit changes with clear messages
4. Push and open a Pull Request

Please follow coding standards, write tests, and respect our Code of Conduct.

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

For questions or feedback, open an issue or reach out at [your.email@example.com].

## Upcoming Features

- Backend API integration with ASP.NET Core Identity
- Enhanced user profiles and analytics dashboard
- Real-time notifications via SignalR
- Payment gateway support
- Advanced search, filtering, and localization

---

*Thank you for using **Event Management**!*
