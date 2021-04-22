import '../tdapi.dart';

/// A WebRTC server
class CallServerTypeWebrtc extends CallServerType {
  CallServerTypeWebrtc(
      {required this.username,
      required this.password,
      required this.supportsTurn,
      required this.supportsStun});

  /// [username] Username to be used for authentication
  final String username;

  /// [password] Authentication password
  final String password;

  /// [supportsTurn] True, if the server supports TURN
  final bool supportsTurn;

  /// [supportsStun] True, if the server supports STUN
  final bool supportsStun;

  static const String CONSTRUCTOR = 'callServerTypeWebrtc';

  static CallServerTypeWebrtc? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServerTypeWebrtc(
        username: json['username'],
        password: json['password'],
        supportsTurn: json['supports_turn'],
        supportsStun: json['supports_stun']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'username': this.username,
        'password': this.password,
        'supports_turn': this.supportsTurn,
        'supports_stun': this.supportsStun,
        '@type': CONSTRUCTOR
      };
}
