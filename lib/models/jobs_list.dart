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
<<<<<<< HEAD
          dureOffret: "4 days"),
||||||| f7b7241
          dureOffret: "4days"),
      Jobs(
          description: "Full Stack developper",
          montant: "30- 90",
          hour: "Fulltime",
          logo: "",
          entreprise: "Connectis",
          ville: "Goma",
          dureOffret: "4days"),
=======
          dureOffret: "4 days"),
      Jobs(
          description: "Design XD maquette",
          montant: "15-30",
          hour: "Fulltime",
          logo: "",
          entreprise: "Papyris",
          ville: "Bukavu",
          dureOffret: "30 days"),
>>>>>>> 714465209e0a8ab39b7f1dbf8b4afddfe0453199
    ];
  }
}
