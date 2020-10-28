class Jobs {
  final String description;
  final String subdescription;
  final String subdescription2;
  final String daysleft;
  final List offres, offresImages;

  Jobs(
      {this.description,
      this.daysleft,
      this.subdescription,
      this.subdescription2,
      this.offres,
      this.offresImages});
}

final teacher = Jobs(
  description: "Education primary schools",
  subdescription: "Channels",
  subdescription2: "full times",
  daysleft: "30 days",
);

final securiteofficer = Jobs(
  description: "Securite Officer at connectis",
  subdescription: "Channels",
  subdescription2: "full times",
  daysleft: "03 days",
);

final allJobs = [teacher, securiteofficer, securiteofficer];
