import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a description of a custom keyboard and actions that can be done
/// with it to quickly reply to bots
abstract class ReplyMarkup extends TdObject {
  const ReplyMarkup();

  static const String CONSTRUCTOR = 'replyMarkup';

  /// Inherited by:
  /// [ReplyMarkupRemoveKeyboard]
  /// [ReplyMarkupForceReply]
  /// [ReplyMarkupShowKeyboard]
  /// [ReplyMarkupInlineKeyboard]
  static ReplyMarkup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ReplyMarkupRemoveKeyboard.CONSTRUCTOR:
        return ReplyMarkupRemoveKeyboard.fromJson(json);
      case ReplyMarkupForceReply.CONSTRUCTOR:
        return ReplyMarkupForceReply.fromJson(json);
      case ReplyMarkupShowKeyboard.CONSTRUCTOR:
        return ReplyMarkupShowKeyboard.fromJson(json);
      case ReplyMarkupInlineKeyboard.CONSTRUCTOR:
        return ReplyMarkupInlineKeyboard.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
