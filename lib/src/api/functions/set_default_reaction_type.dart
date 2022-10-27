import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes type of default reaction for the current user
/// Returns [Ok]
@immutable
class SetDefaultReactionType extends TdFunction {
  const SetDefaultReactionType({
    required this.reactionType,
  });

  /// [reactionType] New type of the default reaction
  final ReactionType reactionType;

  static const String constructor = 'setDefaultReactionType';

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
