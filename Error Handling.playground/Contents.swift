
enum PasswordValidationError: Error {
    case passwordTooShort
}

func validatePassword(password: String) throws {
    if password.count <= 6 {
        throw PasswordValidationError.passwordTooShort
    }
}
