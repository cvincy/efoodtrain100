class userModel{
  final String username;
  final String id;
//  final String countername;


  userModel({required this.username,
    required this.id,

    // required this.countername,
  });

  factory userModel.fromJson(Map<String, dynamic> json) {
    return userModel(
        id: json['logid'],
        username: json['user_name'],
        );
    }
}