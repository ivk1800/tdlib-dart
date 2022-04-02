import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Suggests the user to check whether they still remember their 2-step
/// verification password
class SuggestedActionCheckPassword extends SuggestedAction {
  const SuggestedActionCheckPassword();

  static const String CONSTRUCTOR = 'suggestedActionCheckPassword';

  static SuggestedActionCheckPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionCheckPassword();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
