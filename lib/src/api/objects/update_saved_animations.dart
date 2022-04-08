import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of saved animations was updated
@immutable
class UpdateSavedAnimations extends Update {
  const UpdateSavedAnimations({
    required this.animationIds,
  });

  /// [animationIds] The new list of file identifiers of saved animations
  final List<int> animationIds;

  static const String constructor = 'updateSavedAnimations';

  static UpdateSavedAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedAnimations(
      animationIds: List<int>.from(
          (json['animation_ids'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation_ids': animationIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
