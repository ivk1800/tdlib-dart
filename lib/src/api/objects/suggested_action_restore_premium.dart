import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to restore a recently expired Premium subscription
@immutable
class SuggestedActionRestorePremium extends SuggestedAction {
  const SuggestedActionRestorePremium();

  static const String constructor = 'suggestedActionRestorePremium';

  static SuggestedActionRestorePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionRestorePremium();
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
