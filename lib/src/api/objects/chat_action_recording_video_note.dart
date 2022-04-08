import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is recording a video note
@immutable
class ChatActionRecordingVideoNote extends ChatAction {
  const ChatActionRecordingVideoNote();

  static const String constructor = 'chatActionRecordingVideoNote';

  static ChatActionRecordingVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVideoNote();
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
