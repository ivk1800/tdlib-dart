import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element; for
/// bots only
class InputPassportElementError extends TdObject {
  InputPassportElementError(
      {required this.type, required this.message, required this.source});

  /// [type] Type of Telegram Passport element that has the error
  final PassportElementType type;

  /// [message] Error message
  final String message;

  /// [source] Error source
  final InputPassportElementErrorSource source;

  static const String CONSTRUCTOR = 'inputPassportElementError';

  static InputPassportElementError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementError(
        type: PassportElementType.fromJson(json['type'])!,
        message: json['message'],
        source: InputPassportElementErrorSource.fromJson(json['source'])!);
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
