import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element
class PassportElementError extends TdObject {
  PassportElementError(
      {required this.type, required this.message, required this.source});

  /// [type] Type of the Telegram Passport element which has the error
  final PassportElementType type;

  /// [message] Error message
  final String message;

  /// [source] Error source
  final PassportElementErrorSource source;

  static const String CONSTRUCTOR = 'passportElementError';

  static PassportElementError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementError(
        type: PassportElementType.fromJson(json['type'])!,
        message: json['message'],
        source: PassportElementErrorSource.fromJson(json['source'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'type': this.type.toJson(),
        'message': this.message,
        'source': this.source.toJson(),
        '@type': CONSTRUCTOR
      };
}
