import '../tdapi.dart';

/// Describes a group of video synchronization source identifiers
class GroupCallVideoSourceGroup extends TdObject {
  GroupCallVideoSourceGroup({required this.semantics, required this.sourceIds});

  /// [semantics] The semantics of sources, one of "SIM" or "FID"
  final String semantics;

  /// [sourceIds] The list of synchronization source identifiers
  final List<int> sourceIds;

  static const String CONSTRUCTOR = 'groupCallVideoSourceGroup';

  static GroupCallVideoSourceGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallVideoSourceGroup(
        semantics: json['semantics'],
        sourceIds: List<int>.from(
            (json['source_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'semantics': this.semantics,
        'source_ids': sourceIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
