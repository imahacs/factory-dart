import 'package:factory_dart/database/json/dummy_json.dart';
import 'package:factory_dart/database/model/model.dart';

void main() {
  // Get the university JSON
  List<Course> courses =
      (university['courses'] as List).map((e) => Course.fromJson(e)).toList(); // Convert JSON to List<Course>

  // Print all courses
  print("List of all courses:");
  for (var course in courses) {
    print("Course Name: ${course.courseName}");
    print("Course Code: ${course.courseCode}");
    print("Schedule: ${course.schedule}");
    print("");
  }

  // Add a new course
  courses.add(Course(
      courseName: "Flutter",
      courseCode: "CS401",
      schedule: ["Tuesday 10:00 AM - 12:00 PM"]));
  print("Added Course: ${courses.last.courseName}"); 

  // Remove a course
  courses.removeWhere((course) => course.courseCode == "CS401");
}
