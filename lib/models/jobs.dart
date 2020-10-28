import 'package:uix/constants/strings.dart';

class Jobs {
  final String description;
  final String subdescritpion;
  final String logo;
  final String corporater;
  final String location;
  final String daysleft;
  final List jobs, jobsImages;

  Jobs(
      {this.description,
      this.subdescritpion,
      this.logo,
      this.corporater,
      this.location,
      this.daysleft,
      this.jobs,
      this.jobsImages});
}

final desginJobs = Jobs(
  description: "Full Stack design",
  subdescritpion: "30- 90",
  logo: Strings.user,
  corporater: "Connectis",
  location: "Goma",
  daysleft: "30 days",
  jobs: [0, 1],
  jobsImages: [],
);
final programmerJobs = Jobs(
  description: "Full Stack design",
  subdescritpion: "30- 90",
  logo: Strings.user,
  corporater: "Connectis",
  location: "Goma",
  daysleft: "30 days",
  jobs: [0, 2],
  jobsImages: [],
);
final graphicJobs = Jobs(
  description: "Full Stack design",
  subdescritpion: "30- 90",
  logo: Strings.user,
  corporater: "Connectis",
  location: "Goma",
  daysleft: "30 days",
  jobs: [0, 3],
  jobsImages: [],
);
final mathJobs = Jobs(
  description: "Full Stack design",
  subdescritpion: "30- 90",
  logo: Strings.user,
  corporater: "Connectis",
  location: "Goma",
  daysleft: "30 days",
  jobs: [0, 4],
  jobsImages: [],
);
final allJobs = [desginJobs, programmerJobs, graphicJobs, mathJobs];
