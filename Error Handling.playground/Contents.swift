
enum PasswordValidationError: Error {
    case passwordTooShort
}

func validatePassword(password: String) throws {
    if password.count <= 6 {
        throw PasswordValidationError.passwordTooShort
    }
}

enum RegistrationDetailsFormatError: Error {
    case usernameEmpty
    case passwordEmpty
    case passwordTooShort
}

func validateUserDetails(username: String, password: String) throws {
    if username.isEmpty {
        throw RegistrationDetailsFormatError.usernameEmpty
    } else if password.isEmpty {
        throw RegistrationDetailsFormatError.passwordEmpty
    } else if password.count < 7 {
        throw RegistrationDetailsFormatError.passwordTooShort
    }
}

do {
    try validateUserDetails(username: "JohnAppleseed", password: "example")
    print("Validation sucess")
} catch RegistrationDetailsFormatError.usernameEmpty,
        RegistrationDetailsFormatError.passwordEmpty {
    print("Username and password should not be empty")
} catch RegistrationDetailsFormatError.passwordTooShort {
    print("Password too short")
} catch {
    print(error)
}


