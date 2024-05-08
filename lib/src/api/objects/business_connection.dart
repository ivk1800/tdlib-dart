import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a connection of the bot with a business account
@immutable
class BusinessConnection extends TdObject {
  const BusinessConnection({
    required this.id,
    required this.userId,
    required this.userChatId,
    required this.date,
    required this.canReply,
    required this.isEnabled,
  });

  /// [id] Unique identifier of the connection
  final String id;

  /// [userId] Identifier of the business user that created the connection
  final int userId;

  /// [userChatId] Chat identifier of the private chat with the user
  final int userChatId;

  /// [date] Point in time (Unix timestamp) when the connection was established
  final int date;

  /// [canReply] True, if the bot can send messages to the connected user; false
  /// otherwise
  final bool canReply;

  /// [isEnabled] True, if the connection is enabled; false otherwise
  final bool isEnabled;

  static const String constructor = 'businessConnection';

  static BusinessConnection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessConnection(
      id: json['id'] as String,
      userId: json['user_id'] as int,
      userChatId: json['user_chat_id'] as int,
      date: json['date'] as int,
      canReply: json['can_reply'] as bool,
      isEnabled: json['is_enabled'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'user_id': userId,
        'user_chat_id': userChatId,
        'date': date,
        'can_reply': canReply,
        'is_enabled': isEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
