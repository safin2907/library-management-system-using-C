// Function for login
void login() {
    printf("----------main menu----------\n\n");
    int choice;
    printf("(SignUp = 1, SignIn = 2, SignOut = 3)\nEnter choice: \n");
    scanf("%d", &choice);

    switch(choice) {
        case 1:
            signup();
            break;
        case 2:
            signin();
            break;
        case 3:
            signout();
            break;
        default:
            printf("Invalid choice. Try again.\n");
    }
}

void signup() {
    char username[MAX], password[MAX];
    FILE *file = fopen(filename, "a");

    if (file == NULL) {
        printf("Error opening file!\n");
        return;
    }

    printf("\nEnter a new username: ");
    scanf("%s", username);
    printf("Enter a new password: ");
    scanf("%s", password);

    // Write the credentials to the file
    fprintf(file, "%s %s\n", username, password);
    fclose(file);

    printf("Sign up successful! You can now sign in.\n");
    signin(username, password);  // Pass the signup credentials to signin()
}

void signin(char* signupUsername, char* signupPassword) {
    char username[MAX], password[MAX], fileUser[MAX], filePass[MAX];
    FILE *file = fopen(filename, "r");

    if (file == NULL) {
        printf("No users found! Please sign up first.\n");
        return;
    }

    printf("\nEnter your username: ");
    scanf("%s", username);
    printf("Enter your password: ");
    scanf("%s", password);

    // Check credentials from the file
    while (fscanf(file, "%s %s", fileUser, filePass) != EOF) {
        if (strcmp(username, fileUser) == 0 && strcmp(password, filePass) == 0) {
            printf("Sign in successful! Welcome, %s.\n", username);
            admin():
            fclose(file);

            // Validate against signup credentials
            if (strcmp(username, signupUsername) == 0 && strcmp(password, signupPassword) == 0) {
                student(); // Call student function if the credentials match
            } else {
                printf("Unauthorized access attempt.\n");
            }
            return;
        }
    }

    fclose(file);
    printf("Invalid username or password. Please try again.\n");
}

// Function to sign out the user
void signout() {
    printf("You have successfully signed out.\n");

    printf("\nWould you like to:\n1. Go back to Login\n2. Close the program\nEnter your choice: ");
    int choice;
    scanf("%d", &choice);

    if (choice == 1) {
        login();
    } else if (choice == 2) {
        printf("Closing the program. Goodbye!\n");
        exit(0);
    } else {
        printf("Invalid choice! Closing the program. Goodbye!\n");
        exit(0);
    }
}
