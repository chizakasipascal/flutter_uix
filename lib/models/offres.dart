class Offres {
  final int offresId;
  final String description;
  final String message;
  final String lottie;

  Offres({this.offresId, this.description, this.message, this.lottie});
}

final desginJobs = Offres(
  offresId: 1,
  description: "Get hired\nby the popular\nteamns",
  message:
      "Find job according to your\nninterest click on search\nAnd choose category aacording you skills",
  lottie: "assets/images/offres_one.json",
);
final programmerJobs = Offres(
  offresId: 2,
  description: "Flutter\nis Google’s\nUI toolkit",
  message:
      "Flutter is Google’s UI toolkit for building beautiful\nnatively compiled applications for mobile, web, and desktop from a single codebase.",
  lottie: "assets/images/hacker-detection.json",
);
final graphicJobs = Offres(
  offresId: 3,
  description: "Dribbble",
  message:
      "Dribbble is the world’s leading\ncommunity for creatives to share, grow,\nand get hired.",
  lottie: "assets/images/grapphic.json",
);
final mathJobs = Offres(
  offresId: 4,
  description: "Mathmatics",
  message: "Schools educations",
  lottie: "assets/images/math.json",
);
final alloffres = [desginJobs, programmerJobs, graphicJobs, mathJobs];
