
String subTitle = 'Feel free to Contact me by submitting the form below and I will get back to you as soon as possible';

String sentIcon = 'assets/images/sent-icon.png';
String errorIcon = 'assets/images/error-icon.png';

class Sender {
  String name = '';
  String email = '';
  String subject = '';
  String message = '';

  Sender({
    required this.name,
    required this.email,
    required this.subject,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'subject': subject,
      'message': message,
    };
  }

  static bool isValidGmail(String email) {

    final RegExp gmailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@gmail\.com$'
    );
    return gmailRegex.hasMatch(email);
  }
}
