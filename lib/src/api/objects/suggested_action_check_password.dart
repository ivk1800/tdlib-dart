import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to check whether they still remember their 2-step
/// verification password
@immutable
class SuggestedActionCheckPassword extends SuggestedAction {
  const SuggestedActionCheckPassword();

  static const String constructor = 'suggestedActionCheckPassword';

  static SuggestedActionCheckPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionCheckPassword();
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
