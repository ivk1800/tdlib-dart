import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the block list of a message sender. Currently, only users and
/// supergroup chats can be blocked
/// Returns [Ok]
@immutable
class SetMessageSenderBlockList extends TdFunction {
  const SetMessageSenderBlockList({
    required this.senderId,
    this.blockList,
  });

  /// [senderId] Identifier of a message sender to block/unblock
  final MessageSender senderId;

  /// [blockList] New block list for the message sender; pass null to unblock
  /// the message sender
  final BlockList? blockList;

  static const String constructor = 'setMessageSenderBlockList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_id': senderId.toJson(),
        'block_list': blockList?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
