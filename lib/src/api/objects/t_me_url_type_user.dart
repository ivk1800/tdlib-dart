import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A URL linking to a user
@immutable
class TMeUrlTypeUser extends TMeUrlType {
  const TMeUrlTypeUser({
    required this.userId,
  });

  /// [userId] Identifier of the user
  final int userId;

  static const String constructor = 'tMeUrlTypeUser';

  static TMeUrlTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeUser(
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
