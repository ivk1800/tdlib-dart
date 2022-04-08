import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An object of this type can be returned on every function call, in case of
/// an error
@immutable
class TdError extends TdObject {
  const TdError({
    required this.code,
    required this.message,
  });

  /// [code] Error code; subject to future changes. If the error code is 406,
  /// the error message must not be processed in any way and must not be
  /// displayed to the user
  final int code;

  /// [message] Error message; subject to future changes
  final String message;

  static const String constructor = 'error';

  static TdError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TdError(
      code: json['code'],
      message: json['message'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        'message': message,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
