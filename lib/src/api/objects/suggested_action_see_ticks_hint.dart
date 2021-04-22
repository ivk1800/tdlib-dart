import '../tdapi.dart';

/// Suggests the user to see a hint about meaning of one and two ticks on sent
/// message
class SuggestedActionSeeTicksHint extends SuggestedAction {
  const SuggestedActionSeeTicksHint();

  static const String CONSTRUCTOR = 'suggestedActionSeeTicksHint';

  static SuggestedActionSeeTicksHint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSeeTicksHint();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
