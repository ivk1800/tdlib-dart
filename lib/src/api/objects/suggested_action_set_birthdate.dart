import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to set birthdate
@immutable
class SuggestedActionSetBirthdate extends SuggestedAction {
  const SuggestedActionSetBirthdate();

  static const String constructor = 'suggestedActionSetBirthdate';

  static SuggestedActionSetBirthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSetBirthdate();
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
