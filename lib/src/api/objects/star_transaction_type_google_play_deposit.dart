import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from Google Play; for
/// regular users only
@immutable
class StarTransactionTypeGooglePlayDeposit extends StarTransactionType {
  const StarTransactionTypeGooglePlayDeposit();

  static const String constructor = 'starTransactionTypeGooglePlayDeposit';

  static StarTransactionTypeGooglePlayDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeGooglePlayDeposit();
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
