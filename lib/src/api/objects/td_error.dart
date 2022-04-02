import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An object of this type can be returned on every function call, in case of
/// an error
class TdError extends TdObject {
  TdError({required this.code, required this.message});

  /// [code] Error code; subject to future changes. If the error code is 406,
  /// the error message must not be processed in any way and must not be
  /// displayed to the user
  final int code;

  /// [message] Error message; subject to future changes
  final String message;

  static const String CONSTRUCTOR = 'error';

  static TdError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TdError(code: json['code'], message: json['message']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, 'message': this.message, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
