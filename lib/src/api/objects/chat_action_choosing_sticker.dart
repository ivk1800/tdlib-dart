import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is picking a sticker to send
@immutable
class ChatActionChoosingSticker extends ChatAction {
  const ChatActionChoosingSticker();

  static const String constructor = 'chatActionChoosingSticker';

  static ChatActionChoosingSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingSticker();
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
