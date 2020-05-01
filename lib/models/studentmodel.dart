class StudentData {
    String email;
    String name;
    String parentName;
    String parentPhn;
    String phone;
    String place;

    StudentData({this.email, this.name, this.parentName, this.parentPhn, this.phone, this.place});

    factory StudentData.fromJson(Map<String, dynamic> json) {
        return StudentData(
            email: json['email'],
            name: json['name'],
            parentName: json['parentName'],
            parentPhn: json['parentPhn'],
            phone: json['phone'],
            place: json['place'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['email'] = this.email;
        data['name'] = this.name;
        data['parentName'] = this.parentName;
        data['parentPhn'] = this.parentPhn;
        data['phone'] = this.phone;
        data['place'] = this.place;
        return data;
    }
}