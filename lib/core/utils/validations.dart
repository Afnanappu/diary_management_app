class TextValidation {
  static bool email(String? value) {
    if (value == null) return false;
    return !RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    ).hasMatch(value);
  }

  static bool name(String? value) {
    if (value == null) return false;
    return !RegExp(r"^[a-zA-Z\s]{2,50}$").hasMatch(value);
  }

  static bool phone(String? value) {
    if (value == null) return false;
    return !RegExp(r"^[0-9]{10}$").hasMatch(value);
  }
}
