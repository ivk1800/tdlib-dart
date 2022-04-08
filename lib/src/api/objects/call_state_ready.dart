import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call is ready to use
@immutable
class CallStateReady extends CallState {
  const CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
  });

  /// [protocol] Call protocols supported by the peer
  final CallProtocol protocol;

  /// [servers] List of available call servers
  final List<CallServer> servers;

  /// [config] A JSON-encoded call config
  final String config;

  /// [encryptionKey] Call encryption key
  final String encryptionKey;

  /// [emojis] Encryption key emojis fingerprint
  final List<String> emojis;

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy
  /// settings
  final bool allowP2p;

  static const String constructor = 'callStateReady';

  static CallStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateReady(
      protocol: CallProtocol.fromJson(json['protocol'])!,
      servers: List<CallServer>.from((json['servers'] ?? [])
          .map((item) => CallServer.fromJson(item))
          .toList()),
      config: json['config'],
      encryptionKey: json['encryption_key'],
      emojis: List<String>.from(
          (json['emojis'] ?? []).map((item) => item).toList()),
      allowP2p: json['allow_p2p'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'protocol': protocol.toJson(),
        'servers': servers.map((item) => item.toJson()).toList(),
        'config': config,
        'encryption_key': encryptionKey,
        'emojis': emojis.map((item) => item).toList(),
        'allow_p2p': allowP2p,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
