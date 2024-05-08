import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of inline keyboard button
@immutable
abstract class InlineKeyboardButtonType extends TdObject {
  const InlineKeyboardButtonType();

  static const String constructor = 'inlineKeyboardButtonType';

  /// Inherited by:
  /// [InlineKeyboardButtonTypeBuy]
  /// [InlineKeyboardButtonTypeCallbackGame]
  /// [InlineKeyboardButtonTypeCallbackWithPassword]
  /// [InlineKeyboardButtonTypeCallback]
  /// [InlineKeyboardButtonTypeLoginUrl]
  /// [InlineKeyboardButtonTypeSwitchInline]
  /// [InlineKeyboardButtonTypeUrl]
  /// [InlineKeyboardButtonTypeUser]
  /// [InlineKeyboardButtonTypeWebApp]
  static InlineKeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InlineKeyboardButtonTypeBuy.constructor:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      case InlineKeyboardButtonTypeCallback.constructor:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.constructor:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.constructor:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.constructor:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.constructor:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeUrl.constructor:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeUser.constructor:
        return InlineKeyboardButtonTypeUser.fromJson(json);
      case InlineKeyboardButtonTypeWebApp.constructor:
        return InlineKeyboardButtonTypeWebApp.fromJson(json);
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
