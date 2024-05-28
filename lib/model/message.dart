class Message {
  String message;
  String sentByMe;
  String sentBy;
  String timestamp;
  String room;

  Message({
    required this.message,
    required this.sentByMe,
    required this.sentBy,
    required this.timestamp,
    required this.room,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      message: json["message"],
      sentByMe: json["sentByMe"],
      sentBy: json["sentBy"],
      timestamp: json["timestamp"],
      room: json["room"]
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'sentByMe': sentByMe,
      'sentBy': sentBy,
      'timestamp': timestamp,
    };
  }
}