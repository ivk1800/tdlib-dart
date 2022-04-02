import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the block state of a message sender. Currently, only users and
/// supergroup chats can be blocked
/// Returns [Ok]
class ToggleMessageSenderIsBlocked extends TdFunction {
  ToggleMessageSenderIsBlocked(
      {required this.senderId, required this.isBlocked});

  /// [senderId] Identifier of a message sender to block/unblock
  final MessageSender senderId;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  static const String CONSTRUCTOR = 'toggleMessageSenderIsBlocked';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sender_id': this.senderId.toJson(),
        'is_blocked': this.isBlocked,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
