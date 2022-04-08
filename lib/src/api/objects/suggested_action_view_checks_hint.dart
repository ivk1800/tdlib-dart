import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to view a hint about the meaning of one and two check
/// marks on sent messages
@immutable
class SuggestedActionViewChecksHint extends SuggestedAction {
  const SuggestedActionViewChecksHint();

  static const String constructor = 'suggestedActionViewChecksHint';

  static SuggestedActionViewChecksHint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionViewChecksHint();
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
