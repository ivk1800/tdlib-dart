import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a receiving of a commission from an affiliate program;
/// for regular users, bots and channel chats only
@immutable
class StarTransactionTypeAffiliateProgramCommission
    extends StarTransactionType {
  const StarTransactionTypeAffiliateProgramCommission({
    required this.chatId,
    required this.commissionPerMille,
  });

  /// [chatId] Identifier of the chat that created the affiliate program
  final int chatId;

  /// [commissionPerMille] The number of Telegram Stars received by the
  /// affiliate for each 1000 Telegram Stars received by the program owner
  final int commissionPerMille;

  static const String constructor =
      'starTransactionTypeAffiliateProgramCommission';

  static StarTransactionTypeAffiliateProgramCommission? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeAffiliateProgramCommission(
      chatId: json['chat_id'] as int,
      commissionPerMille: json['commission_per_mille'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'commission_per_mille': commissionPerMille,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
