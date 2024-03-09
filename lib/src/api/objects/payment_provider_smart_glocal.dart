import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Smart Glocal payment provider
@immutable
class PaymentProviderSmartGlocal extends PaymentProvider {
  const PaymentProviderSmartGlocal({
    required this.publicToken,
    required this.tokenizeUrl,
  });

  /// [publicToken] Public payment token
  final String publicToken;

  /// [tokenizeUrl] URL for sending card tokenization requests
  final String tokenizeUrl;

  static const String constructor = 'paymentProviderSmartGlocal';

  static PaymentProviderSmartGlocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentProviderSmartGlocal(
      publicToken: json['public_token'] as String,
      tokenizeUrl: json['tokenize_url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'public_token': publicToken,
        'tokenize_url': tokenizeUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
