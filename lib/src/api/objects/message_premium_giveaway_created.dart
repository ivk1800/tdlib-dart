import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Premium giveaway was created for the chat
@immutable
class MessagePremiumGiveawayCreated extends MessageContent {
  const MessagePremiumGiveawayCreated();

  static const String constructor = 'messagePremiumGiveawayCreated';

  static MessagePremiumGiveawayCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessagePremiumGiveawayCreated();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
