import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The current user shared a user, which was requested by the bot
@immutable
class MessageUserShared extends MessageContent {
  const MessageUserShared({
    required this.userId,
    required this.buttonId,
  });

  /// [userId] Identifier of the shared user
  final int userId;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  static const String constructor = 'messageUserShared';

  static MessageUserShared? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageUserShared(
      userId: json['user_id'] as int,
      buttonId: json['button_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'button_id': buttonId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
