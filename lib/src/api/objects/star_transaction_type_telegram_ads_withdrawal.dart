import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a withdrawal of earned Telegram Stars to Telegram Ad
/// platform; for bots and channel chats only
@immutable
class StarTransactionTypeTelegramAdsWithdrawal extends StarTransactionType {
  const StarTransactionTypeTelegramAdsWithdrawal();

  static const String constructor = 'starTransactionTypeTelegramAdsWithdrawal';

  static StarTransactionTypeTelegramAdsWithdrawal? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeTelegramAdsWithdrawal();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
