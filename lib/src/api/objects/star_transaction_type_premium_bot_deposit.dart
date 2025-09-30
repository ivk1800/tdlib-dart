import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from the Premium bot; for
/// regular users only
@immutable
class StarTransactionTypePremiumBotDeposit extends StarTransactionType {
  const StarTransactionTypePremiumBotDeposit();

  static const String constructor = 'starTransactionTypePremiumBotDeposit';

  static StarTransactionTypePremiumBotDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypePremiumBotDeposit();
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
