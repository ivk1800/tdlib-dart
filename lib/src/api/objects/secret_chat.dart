import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a secret chat
@immutable
class SecretChat extends TdObject {
  const SecretChat({
    required this.id,
    required this.userId,
    required this.state,
    required this.isOutbound,
    required this.keyHash,
    required this.layer,
  });

  /// [id] Secret chat identifier
  final int id;

  /// [userId] Identifier of the chat partner
  final int userId;

  /// [state] State of the secret chat
  final SecretChatState state;

  /// [isOutbound] True, if the chat was created by the current user; false
  /// otherwise
  final bool isOutbound;

  /// [keyHash] Hash of the currently used key for comparison with the hash of
  /// the chat partner's key. This is a string of 36 little-endian bytes, which
  /// must be split into groups of 2 bits, each denoting a pixel of one of 4
  /// colors FFFFFF, D5E6F3, 2D5775, and 2F99C9. The pixels must be used to make
  /// a 12x12 square image filled from left to right, top to bottom.
  /// Alternatively, the first 32 bytes of the hash can be converted to the
  /// hexadecimal format and printed as 32 2-digit hex numbers
  final String keyHash;

  /// [layer] Secret chat layer; determines features supported by the chat
  /// partner's application. Nested text entities and underline and
  /// strikethrough entities are supported if the layer files bigger than 2000MB
  /// are supported if the layer
  final int layer;

  static const String constructor = 'secretChat';

  static SecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SecretChat(
      id: json['id'],
      userId: json['user_id'],
      state: SecretChatState.fromJson(json['state'])!,
      isOutbound: json['is_outbound'],
      keyHash: json['key_hash'],
      layer: json['layer'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'user_id': userId,
        'state': state.toJson(),
        'is_outbound': isOutbound,
        'key_hash': keyHash,
        'layer': layer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
