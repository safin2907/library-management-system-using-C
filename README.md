# library-management-system-using-C

![Library_Management_System](https://github.com/user-attachments/assets/2a5da146-cc9f-4f87-870b-627ec57d4d7c)

# Library Management System

## Overview

The **Library Management System** is a capstone project designed to streamline library operations, including book inventory management, user records, and book borrowing/returning processes. Developed entirely in the **C programming language**, this project provides a lightweight, efficient, and cost-effective solution for library management in educational institutions.

## Features

### Functional Features
- **User Authentication:**
  - Admin and student login functionality.
  - Secure user account creation and login system.
- **Book Management:**
  - Add, remove, and view books with details like ID, title, author, and availability.
  - Search books by title or ID.
- **Book Lending and Returning:**
  - Check out and check in books with automatic due date calculation.
  - Late fee processing and tracking.
- **Transaction Management:**
  - Track and display total fees collected.

### Non-Functional Features
- **Performance:** Fast and efficient execution with minimal processing delays.
- **Reliability:** Accurate file handling ensures data integrity.
- **Usability:** Simple, menu-driven interface for easy navigation.
- **Scalability:** Handles increasing numbers of books and users efficiently.
- **Portability:** Runs seamlessly on basic hardware without additional dependencies.

## System Design

- **Programming Language:** C
- **Data Storage:** File-based system using text files for books, users, and transaction records.
- **Interface:** Menu-driven design for intuitive interaction.
- **Core Functions:**
  - User authentication.
  - Book inventory management.
  - Transaction handling.
  - Late fee calculations.

## Methodology

1. **Requirement Analysis:** Identified functional and non-functional requirements.
2. **System Design:** Created use case diagrams and designed the file-based architecture.
3. **Implementation:** Developed core functionalities using C programming and file handling.
4. **Testing:** Conducted unit and integration testing for accuracy and reliability.
5. **Deployment:** Delivered a functional system for library use.

## Testing Results

| Function         | Expected Output                    | Output Status |
|------------------|------------------------------------|---------------|
| signup()         | Creates new account               | Passed        |
| signin()         | Signs user in                     | Passed        |
| signout()        | Signs user out                    | Passed        |
| adminmenu()      | Displays admin menu               | Passed        |
| studentmenu()    | Displays student menu             | Passed        |
| checkout()       | Checks out books                  | Passed        |
| checkin()        | Checks in books                   | Passed        |
| addbook()        | Adds books to the inventory       | Passed        |
| viewlist()       | Displays book list                | Passed        |
| removebook()     | Removes book from inventory       | Passed        |
| searchbook()     | Searches book by title or ID      | Passed        |
| calculatetime()  | Calculates days between dates     | Passed        |
| calculatefee()   | Computes late fees                | Passed        |
| feeprocess()     | Processes late fee transactions   | Passed        |

## Project Highlights

### Admin Features
- Admins can view records, process fees, and manage the book inventory.

### Student Features
- Students can:
  - View available books.
  - Check out or check in books.
  - Calculate late fees based on the return date.

### Late Fee Handling
- Automatic calculation of late fees for books returned past the due date.

## Evaluation

- **Functionality:** Fully implemented and tested core features.
- **Performance:** Efficient operation on basic hardware setups.
- **Usability:** Intuitive interface for non-technical users.
- **Scalability:** Handles growing numbers of users and transactions effectively.

## Conclusion

This project delivers a **lightweight and efficient Library Management System** using the C programming language. It addresses gaps in existing solutions by providing a reliable, scalable, and cost-effective tool for library management in small-scale and resource-constrained environments.

## References

- Code::Blocks
- GCC
- GeeksforGeeks
- Microsoft Copilot
- YouTube Tutorials
- Google Docs and Excel

