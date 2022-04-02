import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a user that sent a join request and waits for administrator
/// approval
class ChatJoinRequest extends TdObject {
  ChatJoinRequest(
      {required this.userId, required this.date, required this.bio});

  /// [userId] User identifier
  final int userId;

  /// [date] Point in time (Unix timestamp) when the user sent the join request
  final int date;

  /// [bio] A short bio of the user
  final String bio;

  static const String CONSTRUCTOR = 'chatJoinRequest';

  static ChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequest(
        userId: json['user_id'], date: json['date'], bio: json['bio']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'date': this.date,
        'bio': this.bio,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
