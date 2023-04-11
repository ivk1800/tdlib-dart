import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element
@immutable
class PassportElementError extends TdObject {
  const PassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });

  /// [type] Type of the Telegram Passport element which has the error
  final PassportElementType type;

  /// [message] Error message
  final String message;

  /// [source] Error source
  final PassportElementErrorSource source;

  static const String constructor = 'passportElementError';

  static PassportElementError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementError(
      type:
          PassportElementType.fromJson(json['type'] as Map<String, dynamic>?)!,
      message: json['message'] as String,
      source: PassportElementErrorSource.fromJson(
          json['source'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'message': message,
        'source': source.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
