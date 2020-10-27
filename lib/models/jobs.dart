import 'package:uix/constants/strings.dart';

class Jobs {
  final String description;
  final String montant;
  final String hour;
  final String logo;
  final String entreprise;
  final String ville;
  final String dureOffret;
  final List jobs, jobsImages;

  Jobs(
      {this.description,
      this.montant,
      this.hour,
      this.logo,
      this.entreprise,
      this.ville,
      this.dureOffret,
      this.jobs,
      this.jobsImages});
}

final desginJobs = Jobs(
  description: "Full Stack design",
  montant: "30- 90",
  hour: "Fulltime",
  logo: Strings.user,
  entreprise: "Connectis",
  ville: "Goma",
  dureOffret: "30 days",
  jobs: [0, 1],
  jobsImages: [],
);
final programmerJobs = Jobs(
  description: "Full Stack developper",
  montant: "30- 90",
  hour: "Fulltime",
  logo: Strings.user,
  entreprise: "Connectis",
  ville: "Goma",
  dureOffret: "4 days",
  jobs: [0, 2],
  jobsImages: [],
);
final graphicJobs = Jobs(
  description: "Graphic illustration",
  montant: "180- 270",
  hour: "Fulltime",
  logo: Strings.user,
  entreprise: "Connectis",
  ville: "Goma",
  dureOffret: "4 days",
  jobs: [0, 3],
  jobsImages: [],
);
final mathJobs = Jobs(
  description: "Professor math",
  montant: "04- 8",
  hour: "Fulltime",
  logo: Strings.user,
  entreprise: "Connectis",
  ville: "Goma",
  dureOffret: "4 days",
  jobs: [0, 4],
  jobsImages: [],
);
final allJobs = [desginJobs, programmerJobs, graphicJobs, mathJobs];
