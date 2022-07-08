import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of supported reactions has changed
@immutable
class UpdateReactions extends Update {
  const UpdateReactions({
    required this.reactions,
  });

  /// [reactions] The new list of supported reactions
  final List<Reaction> reactions;

  static const String constructor = 'updateReactions';

  static UpdateReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateReactions(
      reactions: List<Reaction>.from((json['reactions'] ?? [])
          .map((item) => Reaction.fromJson(item))
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
