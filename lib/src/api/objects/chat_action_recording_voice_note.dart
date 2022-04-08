import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is recording a voice note
@immutable
class ChatActionRecordingVoiceNote extends ChatAction {
  const ChatActionRecordingVoiceNote();

  static const String constructor = 'chatActionRecordingVoiceNote';

  static ChatActionRecordingVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVoiceNote();
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
