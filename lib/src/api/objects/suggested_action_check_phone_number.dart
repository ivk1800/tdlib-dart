import '../tdapi.dart';

/// Suggests the user to check authorization phone number and change the phone
/// number if it is inaccessible
class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  const SuggestedActionCheckPhoneNumber();

  static const String CONSTRUCTOR = 'suggestedActionCheckPhoneNumber';

  static SuggestedActionCheckPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionCheckPhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
