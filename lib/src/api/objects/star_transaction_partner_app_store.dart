import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with App Store
@immutable
class StarTransactionPartnerAppStore extends StarTransactionPartner {
  const StarTransactionPartnerAppStore();

  static const String constructor = 'starTransactionPartnerAppStore';

  static StarTransactionPartnerAppStore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionPartnerAppStore();
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
