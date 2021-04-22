import '../tdapi.dart';

/// Changes the block state of a message sender. Currently, only users and
/// supergroup chats can be blocked
/// Returns [Ok]
class ToggleMessageSenderIsBlocked extends TdFunction {
  ToggleMessageSenderIsBlocked({required this.sender, required this.isBlocked});

  /// [sender] Message Sender
  final MessageSender sender;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  static const String CONSTRUCTOR = 'toggleMessageSenderIsBlocked';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sender': this.sender.toJson(),
        'is_blocked': this.isBlocked,
        '@type': CONSTRUCTOR
      };
}
