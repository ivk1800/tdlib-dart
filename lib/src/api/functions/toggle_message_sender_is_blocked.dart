import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the block state of a message sender. Currently, only users and
/// supergroup chats can be blocked
/// Returns [Ok]
@immutable
class ToggleMessageSenderIsBlocked extends TdFunction {
  const ToggleMessageSenderIsBlocked({
    required this.senderId,
    required this.isBlocked,
  });

  /// [senderId] Identifier of a message sender to block/unblock
  final MessageSender senderId;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  static const String constructor = 'toggleMessageSenderIsBlocked';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_id': senderId.toJson(),
        'is_blocked': isBlocked,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
