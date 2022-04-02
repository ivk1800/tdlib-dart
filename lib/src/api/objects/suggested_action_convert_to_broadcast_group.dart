import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Suggests the user to convert specified supergroup to a broadcast group
class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  SuggestedActionConvertToBroadcastGroup({required this.supergroupId});

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  static const String CONSTRUCTOR = 'suggestedActionConvertToBroadcastGroup';

  static SuggestedActionConvertToBroadcastGroup? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionConvertToBroadcastGroup(
        supergroupId: json['supergroup_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'supergroup_id': this.supergroupId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
