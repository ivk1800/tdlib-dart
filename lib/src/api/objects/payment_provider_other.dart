import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some other payment provider, for which a web payment form must be shown
@immutable
class PaymentProviderOther extends PaymentProvider {
  const PaymentProviderOther({
    required this.url,
  });

  /// [url] Payment form URL
  final String url;

  static const String constructor = 'paymentProviderOther';

  static PaymentProviderOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentProviderOther(
      url: json['url'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
