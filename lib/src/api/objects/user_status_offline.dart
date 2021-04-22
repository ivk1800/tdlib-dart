import '../tdapi.dart';

/// The user is offline
class UserStatusOffline extends UserStatus {
  UserStatusOffline({required this.wasOnline});

  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  final int wasOnline;

  static const String CONSTRUCTOR = 'userStatusOffline';

  static UserStatusOffline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusOffline(wasOnline: json['was_online']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'was_online': this.wasOnline, '@type': CONSTRUCTOR};
}
