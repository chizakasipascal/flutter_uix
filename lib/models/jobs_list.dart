import 'package:uix/models/jobs.dart';

class JobsList {
  static List<Jobs> getJobs() {
    return [
      Jobs(
          description: "Full Stack developper",
          montant: "30- 90",
          hour: "Fulltime",
          logo: "",
          entreprise: "Connectis",
          ville: "Goma",
          dureOffret: "4 days"),
      Jobs(
          description: "Design XD maquette",
          montant: "15-30",
          hour: "Fulltime",
          logo: "",
          entreprise: "Papyris",
          ville: "Bukavu",
          dureOffret: "30 days"),
    ];
  }
}
