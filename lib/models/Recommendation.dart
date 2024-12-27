class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
   Recommendation(
    name: "SpartStart Solutions",
    source: "Full Stack Developer(Aug 2024 - Present)",
    text:
        "Flutter | Node.Js | Firebase | MongoDb | AWS | JIRA ",
  ),
   Recommendation(
    name: "Saarthi AI",
    source: "Full Stack Developer(May 2024 - July 2024)",
    text:
        "•	Engineered a complex, normalized database schema for Saarthi AI App and developed Node.js APIs, targeting 10,000 users.\n•	Implemented Firebase OTP auth for secure user access and integrated data flow between Flutter frontend and 6 backend services.\n•	Built video/image hosting solutions supporting 1 video uploads and 5 image uploads per day.",
  ),
  Recommendation(
    name: "Reway Technology",
    source: "Flutter Developer(July 2023 - Dec 2023)",
    text:
        "In this Delhi based Startup , I manage both of their service based App,i am hired as a full Stack Flutter Developer and my work has been recognized by their CEO and CMO",
  ),

  
];
