import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Suggests the user to check whether authorization phone number is correct
/// and change the phone number if it is inaccessible
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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
