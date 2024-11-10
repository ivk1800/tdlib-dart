import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a video note message
@immutable
class LinkPreviewTypeVideoNote extends LinkPreviewType {
  const LinkPreviewTypeVideoNote({
    required this.videoNote,
  });

  /// [videoNote] The video note
  final VideoNote videoNote;

  static const String constructor = 'linkPreviewTypeVideoNote';

  static LinkPreviewTypeVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVideoNote(
      videoNote:
          VideoNote.fromJson(json['video_note'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video_note': videoNote.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
