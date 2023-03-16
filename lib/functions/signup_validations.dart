bool isValidEmail(String email) {
  // A basic regex pattern for checking email validity
  final pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final regex = RegExp(pattern);
  return regex.hasMatch(email);
}

String? _validatePhone(String value) {
  if (value.isEmpty) {
    return 'Please enter a phone number';
  }
  final phoneRegExp = RegExp(r'/^01[0125][0-9]{8}$/gm');
  if (!phoneRegExp.hasMatch(value)) {
    return 'Please enter a valid phone number';
  }
  return null;
}