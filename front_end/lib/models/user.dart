class UserModel {
  String birthdate;
  String bloodType;
  String city;
  String dateLastDonation;
  String firstName;
  String id;
  String lastName;
  String password;
  String phone;
  int qtyDonations;
  bool sex;
  String state;
  String username;

  UserModel({
    required this.birthdate,
    required this.bloodType,
    required this.city,
    required this.dateLastDonation,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.password,
    required this.phone,
    required this.qtyDonations,
    required this.sex,
    required this.state,
    required this.username,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      birthdate: json['birthdate'],
      bloodType: json['blood_type'],
      city: json['city'],
      dateLastDonation: json['date_last_donation'],
      firstName: json['first_name'],
      id: json['id'],
      lastName: json['last_name'],
      password: json['password'],
      phone: json['phone'],
      qtyDonations: int.parse(json['qty_donations']),
      sex: json['sex'],
      state: json['state'],
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'birthdate': birthdate,
      'blood_type': bloodType,
      'city': city,
      'date_last_donation': dateLastDonation,
      'first_name': firstName,
      'id': id,
      'last_name': lastName,
      'password': password,
      'phone': phone,
      'qty_donations': qtyDonations.toString(),
      'sex': sex,
      'state': state,
      'username': username,
    };
  }
}

