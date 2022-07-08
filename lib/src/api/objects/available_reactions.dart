import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of available reactions
@immutable
class AvailableReactions extends TdObject {
  const AvailableReactions({
    required this.reactions,
  });

  /// [reactions] List of reactions
  final List<AvailableReaction> reactions;

  static const String constructor = 'availableReactions';

  static AvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableReactions(
      reactions: List<AvailableReaction>.from((json['reactions'] ?? [])
          .map((item) => AvailableReaction.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reactions': reactions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
