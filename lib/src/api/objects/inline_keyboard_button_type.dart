import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of an inline keyboard button
@immutable
abstract class InlineKeyboardButtonType extends TdObject {
  const InlineKeyboardButtonType();

  static const String constructor = 'inlineKeyboardButtonType';

  /// Inherited by:
  /// [InlineKeyboardButtonTypeUrl]
  /// [InlineKeyboardButtonTypeLoginUrl]
  /// [InlineKeyboardButtonTypeCallback]
  /// [InlineKeyboardButtonTypeCallbackWithPassword]
  /// [InlineKeyboardButtonTypeCallbackGame]
  /// [InlineKeyboardButtonTypeSwitchInline]
  /// [InlineKeyboardButtonTypeBuy]
  /// [InlineKeyboardButtonTypeUser]
  static InlineKeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InlineKeyboardButtonTypeUrl.constructor:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.constructor:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeCallback.constructor:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.constructor:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.constructor:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.constructor:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.constructor:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      case InlineKeyboardButtonTypeUser.constructor:
        return InlineKeyboardButtonTypeUser.fromJson(json);
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
