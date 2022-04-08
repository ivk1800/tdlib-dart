import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat was blocked or unblocked
@immutable
class UpdateChatIsBlocked extends Update {
  const UpdateChatIsBlocked({
    required this.chatId,
    required this.isBlocked,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  static const String constructor = 'updateChatIsBlocked';

  static UpdateChatIsBlocked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsBlocked(
      chatId: json['chat_id'],
      isBlocked: json['is_blocked'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_blocked': isBlocked,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
