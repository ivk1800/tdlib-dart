import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from Fragment; for regular
/// users and bots only
@immutable
class StarTransactionTypeFragmentDeposit extends StarTransactionType {
  const StarTransactionTypeFragmentDeposit();

  static const String constructor = 'starTransactionTypeFragmentDeposit';

  static StarTransactionTypeFragmentDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeFragmentDeposit();
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
