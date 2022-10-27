import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes reactions available in the chat
@immutable
abstract class ChatAvailableReactions extends TdObject {
  const ChatAvailableReactions();

  static const String constructor = 'chatAvailableReactions';

  /// Inherited by:
  /// [ChatAvailableReactionsAll]
  /// [ChatAvailableReactionsSome]
  static ChatAvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatAvailableReactionsAll.constructor:
        return ChatAvailableReactionsAll.fromJson(json);
      case ChatAvailableReactionsSome.constructor:
        return ChatAvailableReactionsSome.fromJson(json);
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
