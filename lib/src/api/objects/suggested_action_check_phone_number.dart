import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to check whether authorization phone number is correct
/// and change the phone number if it is inaccessible
@immutable
class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  const SuggestedActionCheckPhoneNumber();

  static const String constructor = 'suggestedActionCheckPhoneNumber';

  static SuggestedActionCheckPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionCheckPhoneNumber();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
