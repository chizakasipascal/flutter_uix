import 'package:uix/models/jobs.dart';

class JobsList {
  static List<Jobs> getMessages() {
    return [
      Jobs(
          description: "Full Stack developper",
          montant: "30- 90",
          hour: "Fulltime",
          logo: "",
          entreprise: "Connectis",
          ville: "Goma",
          dureOffret: "4days"),
    ];
  }
}
