import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is offline
@immutable
class UserStatusOffline extends UserStatus {
  const UserStatusOffline({
    required this.wasOnline,
  });

  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  final int wasOnline;

  static const String constructor = 'userStatusOffline';

  static UserStatusOffline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusOffline(
      wasOnline: json['was_online'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'was_online': wasOnline,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
