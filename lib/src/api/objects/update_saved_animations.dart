import '../tdapi.dart';

/// The list of saved animations was updated
class UpdateSavedAnimations extends Update {
  UpdateSavedAnimations({required this.animationIds});

  /// [animationIds] The new list of file identifiers of saved animations
  final List<int> animationIds;

  static const String CONSTRUCTOR = 'updateSavedAnimations';

  static UpdateSavedAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedAnimations(
        animationIds: List<int>.from(
            (json['animation_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animation_ids': animationIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
