
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

  void addSenderDetail(String name, String email,String subject, String message) {
    Sender newSender = Sender(name: name, email: email, message: message, subject: subject);
    senders.add(newSender);
  }

  static bool isValidGmail(String email) {

    final RegExp gmailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@gmail\.com$'
    );

    return gmailRegex.hasMatch(email);
  }
}

List<Sender> senders = [];