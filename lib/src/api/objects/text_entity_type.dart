import '../tdapi.dart';

/// Represents a part of the text which must be formatted differently
abstract class TextEntityType extends TdObject {
  const TextEntityType();

  static const String CONSTRUCTOR = 'textEntityType';

  /// Inherited by:
  /// [TextEntityTypeMention]
  /// [TextEntityTypeHashtag]
  /// [TextEntityTypeCashtag]
  /// [TextEntityTypeBotCommand]
  /// [TextEntityTypeUrl]
  /// [TextEntityTypeEmailAddress]
  /// [TextEntityTypePhoneNumber]
  /// [TextEntityTypeBankCardNumber]
  /// [TextEntityTypeBold]
  /// [TextEntityTypeItalic]
  /// [TextEntityTypeUnderline]
  /// [TextEntityTypeStrikethrough]
  /// [TextEntityTypeCode]
  /// [TextEntityTypePre]
  /// [TextEntityTypePreCode]
  /// [TextEntityTypeTextUrl]
  /// [TextEntityTypeMentionName]
  /// [TextEntityTypeMediaTimestamp]
  static TextEntityType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case TextEntityTypeMention.CONSTRUCTOR:
        return TextEntityTypeMention.fromJson(json);
      case TextEntityTypeHashtag.CONSTRUCTOR:
        return TextEntityTypeHashtag.fromJson(json);
      case TextEntityTypeCashtag.CONSTRUCTOR:
        return TextEntityTypeCashtag.fromJson(json);
      case TextEntityTypeBotCommand.CONSTRUCTOR:
        return TextEntityTypeBotCommand.fromJson(json);
      case TextEntityTypeUrl.CONSTRUCTOR:
        return TextEntityTypeUrl.fromJson(json);
      case TextEntityTypeEmailAddress.CONSTRUCTOR:
        return TextEntityTypeEmailAddress.fromJson(json);
      case TextEntityTypePhoneNumber.CONSTRUCTOR:
        return TextEntityTypePhoneNumber.fromJson(json);
      case TextEntityTypeBankCardNumber.CONSTRUCTOR:
        return TextEntityTypeBankCardNumber.fromJson(json);
      case TextEntityTypeBold.CONSTRUCTOR:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.CONSTRUCTOR:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeUnderline.CONSTRUCTOR:
        return TextEntityTypeUnderline.fromJson(json);
      case TextEntityTypeStrikethrough.CONSTRUCTOR:
        return TextEntityTypeStrikethrough.fromJson(json);
      case TextEntityTypeCode.CONSTRUCTOR:
        return TextEntityTypeCode.fromJson(json);
      case TextEntityTypePre.CONSTRUCTOR:
        return TextEntityTypePre.fromJson(json);
      case TextEntityTypePreCode.CONSTRUCTOR:
        return TextEntityTypePreCode.fromJson(json);
      case TextEntityTypeTextUrl.CONSTRUCTOR:
        return TextEntityTypeTextUrl.fromJson(json);
      case TextEntityTypeMentionName.CONSTRUCTOR:
        return TextEntityTypeMentionName.fromJson(json);
      case TextEntityTypeMediaTimestamp.CONSTRUCTOR:
        return TextEntityTypeMediaTimestamp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
