import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a sponsored message to Telegram moderators
/// Returns [ReportChatSponsoredMessageResult]
@immutable
class ReportChatSponsoredMessage extends TdFunction {
  const ReportChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
    required this.optionId,
  });

  /// [chatId] Chat identifier of the sponsored message
  final int chatId;

  /// [messageId] Identifier of the sponsored message
  final int messageId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  static const String constructor = 'reportChatSponsoredMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'option_id': optionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
