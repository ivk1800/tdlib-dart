import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with unknown partner
@immutable
class StarTransactionPartnerUnsupported extends StarTransactionPartner {
  const StarTransactionPartnerUnsupported();

  static const String constructor = 'starTransactionPartnerUnsupported';

  static StarTransactionPartnerUnsupported? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionPartnerUnsupported();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
