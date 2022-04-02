import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A URL linking to a user
class TMeUrlTypeUser extends TMeUrlType {
  TMeUrlTypeUser({required this.userId});

  /// [userId] Identifier of the user
  final int userId;

  static const String CONSTRUCTOR = 'tMeUrlTypeUser';

  static TMeUrlTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeUser(userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
