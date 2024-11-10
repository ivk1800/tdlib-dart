import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a giveaway
/// Returns [GiveawayInfo]
@immutable
class GetGiveawayInfo extends TdFunction {
  const GetGiveawayInfo({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the channel chat which started the giveaway
  final int chatId;

  /// [messageId] Identifier of the giveaway or a giveaway winners message in
  /// the chat
  final int messageId;

  static const String constructor = 'getGiveawayInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
