import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of message reaction
@immutable
abstract class ReactionType extends TdObject {
  const ReactionType();

  static const String constructor = 'reactionType';

  /// Inherited by:
  /// [ReactionTypeCustomEmoji]
  /// [ReactionTypeEmoji]
  static ReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionTypeCustomEmoji.constructor:
        return ReactionTypeCustomEmoji.fromJson(json);
      case ReactionTypeEmoji.constructor:
        return ReactionTypeEmoji.fromJson(json);
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
