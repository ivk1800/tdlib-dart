import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a description of a custom keyboard and actions that can be done
/// with it to quickly reply to bots
@immutable
abstract class ReplyMarkup extends TdObject {
  const ReplyMarkup();

  static const String constructor = 'replyMarkup';

  /// Inherited by:
  /// [ReplyMarkupForceReply]
  /// [ReplyMarkupInlineKeyboard]
  /// [ReplyMarkupRemoveKeyboard]
  /// [ReplyMarkupShowKeyboard]
  static ReplyMarkup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReplyMarkupForceReply.constructor:
        return ReplyMarkupForceReply.fromJson(json);
      case ReplyMarkupInlineKeyboard.constructor:
        return ReplyMarkupInlineKeyboard.fromJson(json);
      case ReplyMarkupRemoveKeyboard.constructor:
        return ReplyMarkupRemoveKeyboard.fromJson(json);
      case ReplyMarkupShowKeyboard.constructor:
        return ReplyMarkupShowKeyboard.fromJson(json);
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
