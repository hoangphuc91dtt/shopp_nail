class Student {
  String? sId;
  ContactInfo? contactInfo;
  List<String>? registeredCourses;
  dynamic averageScore;
  dynamic dateOfBirth;
  String? myClass;
  String? fullName;

  Student({
    this.sId,
    this.contactInfo,
    this.registeredCourses,
    this.averageScore,
    this.dateOfBirth,
    this.myClass,
    this.fullName,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      sId: json['_id'] ?? '',
      contactInfo: ContactInfo.fromJson(json['contactInfo']),
      registeredCourses: json['registeredCourses'].cast<String>() ?? [],
      averageScore: json['averageScore'] ?? 0,
      dateOfBirth: json['dateOfBirth'] ?? 0,
      myClass: json['class'] ?? '',
      fullName: json['fullName'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sId': sId,
      'contactInfo': contactInfo,
      'registeredCourses': registeredCourses,
      'averageScore': averageScore,
      'dateOfBirth': dateOfBirth,
      'class': myClass,
      'fullName': fullName,
    };
  }
}

class ContactInfo {
  String? address;
  String? email;
  String? phoneNumber;
  String? sId;

  ContactInfo({this.address, this.email, this.phoneNumber, this.sId});

  factory ContactInfo.fromJson(Map<String, dynamic> json) {
    return ContactInfo(
      address: json['address'] ?? '',
      email: json['email'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      sId: json['_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'email': email,
      'phoneNumber': phoneNumber,
      'sId': sId,
    };
  }
}
