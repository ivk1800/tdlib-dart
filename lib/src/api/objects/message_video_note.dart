import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video note message
@immutable
class MessageVideoNote extends MessageContent {
  const MessageVideoNote({
    required this.videoNote,
    required this.isViewed,
    required this.isSecret,
  });

  /// [videoNote] The video note description
  final VideoNote videoNote;

  /// [isViewed] True, if at least one of the recipients has viewed the video
  /// note
  final bool isViewed;

  /// [isSecret] True, if the video note thumbnail must be blurred and the video
  /// note must be shown only while tapped
  final bool isSecret;

  static const String constructor = 'messageVideoNote';

  static MessageVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoNote(
      videoNote:
          VideoNote.fromJson(json['video_note'] as Map<String, dynamic>?)!,
      isViewed: json['is_viewed'] as bool,
      isSecret: json['is_secret'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video_note': videoNote.toJson(),
        'is_viewed': isViewed,
        'is_secret': isSecret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
