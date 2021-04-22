import '../tdapi.dart';

/// Contains information about a Telegram Passport element that was requested
/// by a service
class PassportSuitableElement extends TdObject {
  PassportSuitableElement(
      {required this.type,
      required this.isSelfieRequired,
      required this.isTranslationRequired,
      required this.isNativeNameRequired});

  /// [type] Type of the element
  final PassportElementType type;

  /// [isSelfieRequired] True, if a selfie is required with the identity
  /// document
  final bool isSelfieRequired;

  /// [isTranslationRequired] True, if a certified English translation is
  /// required with the document
  final bool isTranslationRequired;

  /// [isNativeNameRequired] True, if personal details must include the user's
  /// name in the language of their country of residence
  final bool isNativeNameRequired;

  static const String CONSTRUCTOR = 'passportSuitableElement';

  static PassportSuitableElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportSuitableElement(
        type: PassportElementType.fromJson(json['type'])!,
        isSelfieRequired: json['is_selfie_required'],
        isTranslationRequired: json['is_translation_required'],
        isNativeNameRequired: json['is_native_name_required']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'type': this.type.toJson(),
        'is_selfie_required': this.isSelfieRequired,
        'is_translation_required': this.isTranslationRequired,
        'is_native_name_required': this.isNativeNameRequired,
        '@type': CONSTRUCTOR
      };
}
