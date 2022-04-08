import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An audio message
@immutable
class PushMessageContentAudio extends PushMessageContent {
  const PushMessageContentAudio({
    this.audio,
    required this.isPinned,
  });

  /// [audio] Message content; may be null
  final Audio? audio;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentAudio';

  static PushMessageContentAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentAudio(
      audio: Audio.fromJson(json['audio']),
      isPinned: json['is_pinned'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio?.toJson(),
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
