import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a user that sent a join request and waits for administrator
/// approval
@immutable
class ChatJoinRequest extends TdObject {
  const ChatJoinRequest({
    required this.userId,
    required this.date,
    required this.bio,
  });

  /// [userId] User identifier
  final int userId;

  /// [date] Point in time (Unix timestamp) when the user sent the join request
  final int date;

  /// [bio] A short bio of the user
  final String bio;

  static const String constructor = 'chatJoinRequest';

  static ChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequest(
      userId: json['user_id'],
      date: json['date'],
      bio: json['bio'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'date': date,
        'bio': bio,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
