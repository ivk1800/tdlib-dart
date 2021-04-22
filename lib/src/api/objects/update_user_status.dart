import '../tdapi.dart';

/// The user went online or offline
class UpdateUserStatus extends Update {
  UpdateUserStatus({required this.userId, required this.status});

  /// [userId] User identifier
  final int userId;

  /// [status] New status of the user
  final UserStatus status;

  static const String CONSTRUCTOR = 'updateUserStatus';

  static UpdateUserStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserStatus(
        userId: json['user_id'], status: UserStatus.fromJson(json['status'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'status': this.status.toJson(),
        '@type': CONSTRUCTOR
      };
}
