import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uix/constants/strings.dart';
import 'package:uix/utils/colors.dart';

class Jobs {
  final String description;
  final String subdescritpion;
  final Widget logo;
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
  description: "Design",
  subdescritpion: "30- 90",
  logo: Icon(
    Icons.graphic_eq,
    color: WhiteColor,
  ),
  corporater: "Connectis",
  location: "Goma",
  daysleft: "30 days",
  jobs: [0, 1],
  jobsImages: [],
);
final programmerJobs = Jobs(
  description: "Mobile developper",
  subdescritpion: "30- 90",
  logo: Icon(
    Icons.mobile_friendly,
    color: WhiteColor,
  ),
  corporater: "Samusungs",
  location: "Russie",
  daysleft: "For life",
  jobs: [0, 2],
  jobsImages: [],
);
final graphicJobs = Jobs(
  description: "Desktop developper",
  subdescritpion: "30- 90",
  logo: Icon(
    Icons.desktop_mac,
    color: WhiteColor,
  ),
  corporater: "Keys",
  location: "Bukavu",
  daysleft: "30 days",
  jobs: [0, 3],
  jobsImages: [],
);
final mathJobs = Jobs(
  description: "Data base manager",
  subdescritpion: "30- 90",
  logo: Icon(
    Icons.data_usage,
    color: WhiteColor,
  ),
  corporater: "Connectis",
  location: "Goma",
  daysleft: "30 days",
  jobs: [0, 4],
  jobsImages: [],
);
final allJobs = [desginJobs, programmerJobs, graphicJobs, mathJobs];
