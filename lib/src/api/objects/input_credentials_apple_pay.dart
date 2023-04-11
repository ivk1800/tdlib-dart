import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Applies if a user enters new credentials using Apple Pay
@immutable
class InputCredentialsApplePay extends InputCredentials {
  const InputCredentialsApplePay({
    required this.data,
  });

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String constructor = 'inputCredentialsApplePay';

  static InputCredentialsApplePay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsApplePay(
      data: json['data'] as String,
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
