import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a part of the text which must be formatted differently
@immutable
abstract class TextEntityType extends TdObject {
  const TextEntityType();

  static const String constructor = 'textEntityType';

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
  /// [TextEntityTypeSpoiler]
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

    switch (json['@type']) {
      case TextEntityTypeMention.constructor:
        return TextEntityTypeMention.fromJson(json);
      case TextEntityTypeHashtag.constructor:
        return TextEntityTypeHashtag.fromJson(json);
      case TextEntityTypeCashtag.constructor:
        return TextEntityTypeCashtag.fromJson(json);
      case TextEntityTypeBotCommand.constructor:
        return TextEntityTypeBotCommand.fromJson(json);
      case TextEntityTypeUrl.constructor:
        return TextEntityTypeUrl.fromJson(json);
      case TextEntityTypeEmailAddress.constructor:
        return TextEntityTypeEmailAddress.fromJson(json);
      case TextEntityTypePhoneNumber.constructor:
        return TextEntityTypePhoneNumber.fromJson(json);
      case TextEntityTypeBankCardNumber.constructor:
        return TextEntityTypeBankCardNumber.fromJson(json);
      case TextEntityTypeBold.constructor:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.constructor:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeUnderline.constructor:
        return TextEntityTypeUnderline.fromJson(json);
      case TextEntityTypeStrikethrough.constructor:
        return TextEntityTypeStrikethrough.fromJson(json);
      case TextEntityTypeSpoiler.constructor:
        return TextEntityTypeSpoiler.fromJson(json);
      case TextEntityTypeCode.constructor:
        return TextEntityTypeCode.fromJson(json);
      case TextEntityTypePre.constructor:
        return TextEntityTypePre.fromJson(json);
      case TextEntityTypePreCode.constructor:
        return TextEntityTypePreCode.fromJson(json);
      case TextEntityTypeTextUrl.constructor:
        return TextEntityTypeTextUrl.fromJson(json);
      case TextEntityTypeMentionName.constructor:
        return TextEntityTypeMentionName.fromJson(json);
      case TextEntityTypeMediaTimestamp.constructor:
        return TextEntityTypeMediaTimestamp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
