import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to convert specified supergroup to a broadcast group
@immutable
class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  const SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  static const String constructor = 'suggestedActionConvertToBroadcastGroup';

  static SuggestedActionConvertToBroadcastGroup? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionConvertToBroadcastGroup(
      supergroupId: json['supergroup_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
