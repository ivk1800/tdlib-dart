import '../tdapi.dart';

/// Describes a payload for interaction with tgcalls
class GroupCallPayload extends TdObject {
  GroupCallPayload(
      {required this.ufrag, required this.pwd, required this.fingerprints});

  /// [ufrag] Value of the field ufrag
  final String ufrag;

  /// [pwd] Value of the field pwd
  final String pwd;

  /// [fingerprints] The list of fingerprints
  final List<GroupCallPayloadFingerprint> fingerprints;

  static const String CONSTRUCTOR = 'groupCallPayload';

  static GroupCallPayload? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallPayload(
        ufrag: json['ufrag'],
        pwd: json['pwd'],
        fingerprints: List<GroupCallPayloadFingerprint>.from(
            (json['fingerprints'] ?? [])
                .map((item) => GroupCallPayloadFingerprint.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'ufrag': this.ufrag,
        'pwd': this.pwd,
        'fingerprints': fingerprints.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
