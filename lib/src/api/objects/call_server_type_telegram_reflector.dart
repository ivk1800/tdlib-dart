import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram call reflector
class CallServerTypeTelegramReflector extends CallServerType {
  CallServerTypeTelegramReflector({required this.peerTag});

  /// [peerTag] A peer tag to be used with the reflector
  final String peerTag;

  static const String CONSTRUCTOR = 'callServerTypeTelegramReflector';

  static CallServerTypeTelegramReflector? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServerTypeTelegramReflector(peerTag: json['peer_tag']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'peer_tag': this.peerTag, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
