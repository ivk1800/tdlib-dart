import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a user shared with a bot
@immutable
class SharedUser extends TdObject {
  const SharedUser({
    required this.userId,
    this.firstName,
    this.lastName,
    this.username,
    this.photo,
  });

  /// [userId] User identifier
  final int userId;

  /// [firstName] First name of the user; for bots only
  final String? firstName;

  /// [lastName] Last name of the user; for bots only
  final String? lastName;

  /// [username] Username of the user; for bots only
  final String? username;

  /// [photo] Profile photo of the user; for bots only; may be null
  final Photo? photo;

  static const String constructor = 'sharedUser';

  static SharedUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SharedUser(
      userId: json['user_id'] as int,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'first_name': firstName,
        'last_name': lastName,
        'username': username,
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
