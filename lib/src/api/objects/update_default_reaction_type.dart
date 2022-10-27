import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The type of default reaction has changed
@immutable
class UpdateDefaultReactionType extends Update {
  const UpdateDefaultReactionType({
    required this.reactionType,
  });

  /// [reactionType] The new type of the default reaction
  final ReactionType reactionType;

  static const String constructor = 'updateDefaultReactionType';

  static UpdateDefaultReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDefaultReactionType(
      reactionType: ReactionType.fromJson(json['reaction_type'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction_type': reactionType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
