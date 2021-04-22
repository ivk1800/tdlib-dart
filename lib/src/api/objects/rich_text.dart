import '../tdapi.dart';

/// Describes a text object inside an instant-view web page
abstract class RichText extends TdObject {
  const RichText();

  static const String CONSTRUCTOR = 'richText';

  /// Inherited by:
  /// [RichTextPlain]
  /// [RichTextBold]
  /// [RichTextItalic]
  /// [RichTextUnderline]
  /// [RichTextStrikethrough]
  /// [RichTextFixed]
  /// [RichTextUrl]
  /// [RichTextEmailAddress]
  /// [RichTextSubscript]
  /// [RichTextSuperscript]
  /// [RichTextMarked]
  /// [RichTextPhoneNumber]
  /// [RichTextIcon]
  /// [RichTextReference]
  /// [RichTextAnchor]
  /// [RichTextAnchorLink]
  /// [RichTexts]
  static RichText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case RichTextPlain.CONSTRUCTOR:
        return RichTextPlain.fromJson(json);
      case RichTextBold.CONSTRUCTOR:
        return RichTextBold.fromJson(json);
      case RichTextItalic.CONSTRUCTOR:
        return RichTextItalic.fromJson(json);
      case RichTextUnderline.CONSTRUCTOR:
        return RichTextUnderline.fromJson(json);
      case RichTextStrikethrough.CONSTRUCTOR:
        return RichTextStrikethrough.fromJson(json);
      case RichTextFixed.CONSTRUCTOR:
        return RichTextFixed.fromJson(json);
      case RichTextUrl.CONSTRUCTOR:
        return RichTextUrl.fromJson(json);
      case RichTextEmailAddress.CONSTRUCTOR:
        return RichTextEmailAddress.fromJson(json);
      case RichTextSubscript.CONSTRUCTOR:
        return RichTextSubscript.fromJson(json);
      case RichTextSuperscript.CONSTRUCTOR:
        return RichTextSuperscript.fromJson(json);
      case RichTextMarked.CONSTRUCTOR:
        return RichTextMarked.fromJson(json);
      case RichTextPhoneNumber.CONSTRUCTOR:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextIcon.CONSTRUCTOR:
        return RichTextIcon.fromJson(json);
      case RichTextReference.CONSTRUCTOR:
        return RichTextReference.fromJson(json);
      case RichTextAnchor.CONSTRUCTOR:
        return RichTextAnchor.fromJson(json);
      case RichTextAnchorLink.CONSTRUCTOR:
        return RichTextAnchorLink.fromJson(json);
      case RichTexts.CONSTRUCTOR:
        return RichTexts.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
