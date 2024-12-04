### **Frontend README.md**

# Frontend - Event Management System (Razor Pages)

## Overview

This repository contains the **frontend** of the **Event Management System** built using **ASP.NET Core with Razor Pages**. It handles the presentation layer of the application, including the user interface (UI) for managing events, registering for them, and displaying relevant event information.

The frontend will interact with the backend to display data such as events, user registrations, etc., and allow users to perform actions (e.g., creating events, viewing event details, etc.).

## Project Structure

```plaintext
frontend/
├── Pages/                             # Razor Pages Views (UI)
│   ├── Index.cshtml                   # Home page for the system
│   ├── EventList.cshtml               # List of events for users
│   ├── EventDetails.cshtml            # Detailed view of an event
│   ├── CreateEvent.cshtml             # Page for creating a new event
│   ├── RegisterEvent.cshtml           # Page for registering for an event
│   └── Shared/                        # Common layout and shared UI components
│       ├── _Layout.cshtml             # Main layout for the app (header, footer, etc.)
│       ├── _ValidationScriptsPartial.cshtml  # Validation scripts for forms
├── wwwroot/                            # Static files (CSS, JS, Images)
│   ├── css/                           # Stylesheets (e.g., Bootstrap, custom CSS)
│   ├── js/                            # JavaScript files (custom scripts)
│   └── images/                        # Image assets (e.g., logos, event images)
├── _ViewImports.cshtml                # Shared imports for Razor Pages
└── _ViewStart.cshtml                  # Configures layout and view-related settings
```

### **File Descriptions**

#### **Pages/**
- **`Index.cshtml`**: This is the homepage of the application, which displays a welcome message, information about the system, and links to other sections like the list of events and login pages.
  
- **`EventList.cshtml`**: Displays a list of all events available in the system. It will retrieve event data from the backend and show basic information like event name, date, and location. Users can click to view more details about each event.

- **`EventDetails.cshtml`**: This page displays detailed information about a specific event, such as a description, speakers, date, time, and registration options.

- **`CreateEvent.cshtml`**: Allows authorized users (e.g., admins) to create new events. This page will include a form to input event data, which will be sent to the backend for saving.

- **`RegisterEvent.cshtml`**: A page that allows users to register for an event. It will contain a registration form, where users can provide their information and register for the event.

#### **Shared/**
- **`_Layout.cshtml`**: The layout file contains common HTML structure that is shared across all pages (e.g., header, footer, and navigation menu). All Razor Pages inherit this layout by default.
  
- **`_ValidationScriptsPartial.cshtml`**: Includes validation scripts for form handling. It ensures that user inputs are validated on the client-side (e.g., ensuring required fields are filled out).

#### **wwwroot/**
- **`css/`**: Contains the stylesheets for the frontend.
  - You might include external libraries such as **Bootstrap** for responsive design, along with custom CSS files for your event management system's unique styling.
  
- **`js/`**: Contains custom JavaScript files. You may add scripts here for features like:
  - Form validation
  - Event handling (e.g., when a user submits a registration)
  - AJAX calls to interact with the backend (if applicable)

- **`images/`**: Stores image assets such as:
  - Event banners
  - Logos
  - Icons

### **Frontend Setup and Implementation Steps**

#### **Step 1: Project Initialization**
1. Create a new **ASP.NET Core Razor Pages** project.
2. Add the required dependencies for working with Razor Pages (e.g., `Microsoft.AspNetCore.Razor`).

#### **Step 2: Designing the Pages**
1. Start by designing the **`Index.cshtml`** (homepage) and ensure the layout is correctly set up using **`_Layout.cshtml`**.
2. Implement the **`EventList.cshtml`** to list all events dynamically fetched from the backend.
3. Implement the **`EventDetails.cshtml`** to display event-specific details.

#### **Step 3: Adding Static Assets**
1. Include **CSS** files in the **`wwwroot/css/`** folder to handle page styling.
2. Add **JavaScript** files in the **`wwwroot/js/`** folder for custom frontend behavior.
3. Place any images or icons in the **`wwwroot/images/`** folder.

#### **Step 4: Handling Forms and User Interaction**
1. Implement forms for event creation (**`CreateEvent.cshtml`**) and registration (**`RegisterEvent.cshtml`**).
2. Use **form validation** to ensure users enter correct data.
3. Optionally, use **AJAX** for submitting forms without refreshing the page (if applicable).

#### **Step 5: Integrating with the Backend**
1. Ensure each Razor Page sends HTTP requests to the backend to fetch data (e.g., the list of events).
2. Use **ASP.NET Core model binding** to pass data from the backend to Razor Pages.

#### **Step 6: Final Testing and Styling**
1. Test the frontend on different screen sizes to ensure responsiveness.
2. Apply any final styling adjustments to improve the user experience.

---

### **Conclusion**

The frontend for this project utilizes **ASP.NET Core with Razor Pages**, making it easy to manage and render dynamic content. By structuring the application with clear separation between pages, shared components, and static assets, this project ensures maintainability and scalability.

After the frontend is completed, the next step would be to integrate it with the backend, which will handle data processing, storage, and API communication.