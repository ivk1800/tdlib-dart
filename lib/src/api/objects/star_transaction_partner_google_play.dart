import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with Google Play
@immutable
class StarTransactionPartnerGooglePlay extends StarTransactionPartner {
  const StarTransactionPartnerGooglePlay();

  static const String constructor = 'starTransactionPartnerGooglePlay';

  static StarTransactionPartnerGooglePlay? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionPartnerGooglePlay();
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
