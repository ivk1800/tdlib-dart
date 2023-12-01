import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Boosts a chat and returns the list of available chat boost slots for the
/// current user after the boost
/// Returns [ChatBoostSlots]
@immutable
class BoostChat extends TdFunction {
  const BoostChat({
    required this.chatId,
    required this.slotIds,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [slotIds] Identifiers of boost slots of the current user from which to
  /// apply boosts to the chat
  final List<int> slotIds;

  static const String constructor = 'boostChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'slot_ids': slotIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
