import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat boost slots
@immutable
class ChatBoostSlots extends TdObject {
  const ChatBoostSlots({
    required this.slots,
  });

  /// [slots] List of boost slots
  final List<ChatBoostSlot> slots;

  static const String constructor = 'chatBoostSlots';

  static ChatBoostSlots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSlots(
      slots: List<ChatBoostSlot>.from(
          ((json['slots'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatBoostSlot.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'slots': slots.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
