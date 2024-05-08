import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of revenue transactions for a chat. Currently, this
/// method can be used only for channels if
/// supergroupFullInfo.can_get_revenue_statistics == true
/// Returns [ChatRevenueTransactions]
@immutable
class GetChatRevenueTransactions extends TdFunction {
  const GetChatRevenueTransactions({
    required this.chatId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [offset] Number of transactions to skip
  final int offset;

  /// [limit] The maximum number of transactions to be returned; up to 200
  final int limit;

  static const String constructor = 'getChatRevenueTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
