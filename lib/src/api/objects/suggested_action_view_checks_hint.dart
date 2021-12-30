import '../tdapi.dart';

/// Suggests the user to view a hint about the meaning of one and two check
/// marks on sent messages
class SuggestedActionViewChecksHint extends SuggestedAction {
  const SuggestedActionViewChecksHint();

  static const String CONSTRUCTOR = 'suggestedActionViewChecksHint';

  static SuggestedActionViewChecksHint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionViewChecksHint();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
