import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to set profile photo
@immutable
class SuggestedActionSetProfilePhoto extends SuggestedAction {
  const SuggestedActionSetProfilePhoto();

  static const String constructor = 'suggestedActionSetProfilePhoto';

  static SuggestedActionSetProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSetProfilePhoto();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
