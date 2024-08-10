class Course {
  String courseName;
  String courseCode;
  List<String> schedule;

  Course(
      {required this.courseName,
      required this.courseCode,
      required this.schedule});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseName: json['courseName'] as String,
      courseCode: json['courseCode'] as String,
      schedule: List<String>.from(json['schedule']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'courseName': courseName,
      'courseCode': courseCode,
      'schedule': schedule,
    };
  }
}
