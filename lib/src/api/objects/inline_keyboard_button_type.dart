import '../tdapi.dart';

/// Describes the type of an inline keyboard button
abstract class InlineKeyboardButtonType extends TdObject {
  const InlineKeyboardButtonType();

  static const String CONSTRUCTOR = 'inlineKeyboardButtonType';

  /// Inherited by:
  /// [InlineKeyboardButtonTypeUrl]
  /// [InlineKeyboardButtonTypeLoginUrl]
  /// [InlineKeyboardButtonTypeCallback]
  /// [InlineKeyboardButtonTypeCallbackWithPassword]
  /// [InlineKeyboardButtonTypeCallbackGame]
  /// [InlineKeyboardButtonTypeSwitchInline]
  /// [InlineKeyboardButtonTypeBuy]
  static InlineKeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InlineKeyboardButtonTypeUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeCallback.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.CONSTRUCTOR:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.CONSTRUCTOR:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
