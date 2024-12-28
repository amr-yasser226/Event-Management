// Confirm the script is loaded
console.log("script.js is loaded!");

// Wait for the DOM to be fully loaded
document.addEventListener("DOMContentLoaded", () => {
    console.log("DOM fully loaded!");

    // Log all buttons for debugging
    console.log("All buttons on the page:", document.querySelectorAll(".btn"));

    // Select the Login button
    const loginButton = document.querySelector('.btn[href="/Authentication/Login/Login"]');

    if (loginButton) {
        // Add an event listener to log clicks on the Login button
        loginButton.addEventListener("click", (event) => {
            console.log("Login button clicked!");
            // Optional: Prevent default navigation for testing
            // event.preventDefault();
        });
    } else {
        console.error("Login button not found!");
    }
});
