import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a URL for chat revenue withdrawal; requires owner privileges in
/// the channel chat or the bot. Currently, this method can be used only if
/// getOption("can_withdraw_chat_revenue") for channels with
/// supergroupFullInfo.can_get_revenue_statistics == true or bots with
/// userFullInfo.bot_info.can_get_revenue_statistics == true
/// Returns [HttpUrl]
@immutable
class GetChatRevenueWithdrawalUrl extends TdFunction {
  const GetChatRevenueWithdrawalUrl({
    required this.chatId,
    required this.password,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getChatRevenueWithdrawalUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
