import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Applies if a user enters new credentials using Google Pay
@immutable
class InputCredentialsGooglePay extends InputCredentials {
  const InputCredentialsGooglePay({
    required this.data,
  });

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String constructor = 'inputCredentialsGooglePay';

  static InputCredentialsGooglePay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsGooglePay(
      data: json['data'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
