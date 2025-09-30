import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Saves an inline message to be sent by the given user; for bots only
/// Returns [PreparedInlineMessageId]
@immutable
class SavePreparedInlineMessage extends TdFunction {
  const SavePreparedInlineMessage({
    required this.userId,
    required this.result,
    required this.chatTypes,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [result] The description of the message
  final InputInlineQueryResult result;

  /// [chatTypes] Types of the chats to which the message can be sent
  final TargetChatTypes chatTypes;

  static const String constructor = 'savePreparedInlineMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'result': result.toJson(),
    'chat_types': chatTypes.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
