# Flutter Login Page with Provider

This is a simple **Flutter login page project** using **Provider** for state management.  
It demonstrates user authentication, theme switching, and dynamic UI updates.

---

## Features

- **Login Page**  
  - Enter username to login.
  - If logged in, navigates automatically to HomePage.

- **Home Page**  
  - Displays `"Hai <username>"` dynamically.
  - Includes **Logout button** in AppBar to return to Login Page.
  - Includes **Theme toggle button** in AppBar to switch between light and dark themes.

- **State Management**  
  - Uses **Provider** to manage authentication and theme state globally.
  - StatelessWidgets react to changes using **Consumer** or `context.read()`.
