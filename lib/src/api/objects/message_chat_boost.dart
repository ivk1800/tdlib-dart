import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat was boosted by the sender of the message
@immutable
class MessageChatBoost extends MessageContent {
  const MessageChatBoost({
    required this.boostCount,
  });

  /// [boostCount] Number of times the chat was boosted
  final int boostCount;

  static const String constructor = 'messageChatBoost';

  static MessageChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatBoost(
      boostCount: json['boost_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boost_count': boostCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
