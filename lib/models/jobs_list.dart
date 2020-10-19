import 'package:uix/models/jobs.dart';

class JobsList {
  static List<Jobs> getJobs() {
    return [
      Jobs(
          user:
              "https://media-exp1.licdn.com/dms/image/C4D03AQHNEd3zvvw3_A/profile-displayphoto-shrink_200_200/0?e=1608768000&v=beta&t=Mt_YXhoNeUbTLK_OF2Fyuxd8J46DWqA4MSBPNjjFFsc",
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
