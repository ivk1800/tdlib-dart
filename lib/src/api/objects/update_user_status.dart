import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user went online or offline
@immutable
class UpdateUserStatus extends Update {
  const UpdateUserStatus({
    required this.userId,
    required this.status,
  });

  /// [userId] User identifier
  final int userId;

  /// [status] New status of the user
  final UserStatus status;

  static const String constructor = 'updateUserStatus';

  static UpdateUserStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserStatus(
      userId: json['user_id'],
      status: UserStatus.fromJson(json['status'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
