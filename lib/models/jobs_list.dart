import 'package:uix/constants/strings.dart';
import 'package:uix/models/jobs.dart';

class JobsList {
  static List<Jobs> getJobs() {
    return [
      Jobs(
          description: "Full Stack developper",
          montant: "30- 90",
          hour: "Fulltime",
          logo: Strings.user,
          entreprise: "Connectis",
          ville: "Goma",
          dureOffret: "4 days"),
    ];
  }
}
