import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from App Store; for regular
/// users only
@immutable
class StarTransactionTypeAppStoreDeposit extends StarTransactionType {
  const StarTransactionTypeAppStoreDeposit();

  static const String constructor = 'starTransactionTypeAppStoreDeposit';

  static StarTransactionTypeAppStoreDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeAppStoreDeposit();
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
