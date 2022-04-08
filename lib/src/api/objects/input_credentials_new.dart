import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Applies if a user enters new credentials on a payment provider website
@immutable
class InputCredentialsNew extends InputCredentials {
  const InputCredentialsNew({
    required this.data,
    required this.allowSave,
  });

  /// [data] JSON-encoded data with the credential identifier from the payment
  /// provider
  final String data;

  /// [allowSave] True, if the credential identifier can be saved on the server
  /// side
  final bool allowSave;

  static const String constructor = 'inputCredentialsNew';

  static InputCredentialsNew? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsNew(
      data: json['data'],
      allowSave: json['allow_save'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        'allow_save': allowSave,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
