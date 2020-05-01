class CourseData {
    String courseName;
    String duration;
    String instructorName;
    String studentId;

    CourseData({this.courseName, this.duration, this.instructorName, this.studentId});

    factory CourseData.fromJson(Map<String, dynamic> json) {
        return CourseData(
            courseName: json['courseName'], 
            duration: json['duration'], 
            instructorName: json['instructorName'], 
            studentId: json['studentId'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['courseName'] = this.courseName;
        data['duration'] = this.duration;
        data['instructorName'] = this.instructorName;
        data['studentId'] = this.studentId;
        return data;
    }
}