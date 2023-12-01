import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a slot for chat boost
@immutable
class ChatBoostSlot extends TdObject {
  const ChatBoostSlot({
    required this.slotId,
    required this.currentlyBoostedChatId,
    required this.startDate,
    required this.expirationDate,
    required this.cooldownUntilDate,
  });

  /// [slotId] Unique identifier of the slot
  final int slotId;

  /// [currentlyBoostedChatId] Identifier of the currently boosted chat; 0 if
  /// none
  final int currentlyBoostedChatId;

  /// [startDate] Point in time (Unix timestamp) when the chat was boosted; 0 if
  /// none
  final int startDate;

  /// [expirationDate] Point in time (Unix timestamp) when the boost will expire
  final int expirationDate;

  /// [cooldownUntilDate] Point in time (Unix timestamp) after which the boost
  /// can be used for another chat
  final int cooldownUntilDate;

  static const String constructor = 'chatBoostSlot';

  static ChatBoostSlot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSlot(
      slotId: json['slot_id'] as int,
      currentlyBoostedChatId: json['currently_boosted_chat_id'] as int,
      startDate: json['start_date'] as int,
      expirationDate: json['expiration_date'] as int,
      cooldownUntilDate: json['cooldown_until_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'slot_id': slotId,
        'currently_boosted_chat_id': currentlyBoostedChatId,
        'start_date': startDate,
        'expiration_date': expirationDate,
        'cooldown_until_date': cooldownUntilDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
