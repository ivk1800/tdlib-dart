import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram call reflector
@immutable
class CallServerTypeTelegramReflector extends CallServerType {
  const CallServerTypeTelegramReflector({
    required this.peerTag,
  });

  /// [peerTag] A peer tag to be used with the reflector
  final String peerTag;

  static const String constructor = 'callServerTypeTelegramReflector';

  static CallServerTypeTelegramReflector? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServerTypeTelegramReflector(
      peerTag: json['peer_tag'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'peer_tag': peerTag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
