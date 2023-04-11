import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some data in userFullInfo has been changed
@immutable
class UpdateUserFullInfo extends Update {
  const UpdateUserFullInfo({
    required this.userId,
    required this.userFullInfo,
  });

  /// [userId] User identifier
  final int userId;

  /// [userFullInfo] New full information about the user
  final UserFullInfo userFullInfo;

  static const String constructor = 'updateUserFullInfo';

  static UpdateUserFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserFullInfo(
      userId: json['user_id'] as int,
      userFullInfo: UserFullInfo.fromJson(
          json['user_full_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'user_full_info': userFullInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
