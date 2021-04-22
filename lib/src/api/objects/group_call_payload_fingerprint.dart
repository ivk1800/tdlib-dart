import '../tdapi.dart';

/// Describes a payload fingerprint for interaction with tgcalls
class GroupCallPayloadFingerprint extends TdObject {
  GroupCallPayloadFingerprint(
      {required this.hash, required this.setup, required this.fingerprint});

  /// [hash] Value of the field hash
  final String hash;

  /// [setup] Value of the field setup
  final String setup;

  /// [fingerprint] Value of the field fingerprint
  final String fingerprint;

  static const String CONSTRUCTOR = 'groupCallPayloadFingerprint';

  static GroupCallPayloadFingerprint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallPayloadFingerprint(
        hash: json['hash'],
        setup: json['setup'],
        fingerprint: json['fingerprint']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'hash': this.hash,
        'setup': this.setup,
        'fingerprint': this.fingerprint,
        '@type': CONSTRUCTOR
      };
}
