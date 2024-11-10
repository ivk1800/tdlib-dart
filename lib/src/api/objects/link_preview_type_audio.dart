import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to an audio
@immutable
class LinkPreviewTypeAudio extends LinkPreviewType {
  const LinkPreviewTypeAudio({
    required this.audio,
  });

  /// [audio] The audio description
  final Audio audio;

  static const String constructor = 'linkPreviewTypeAudio';

  static LinkPreviewTypeAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeAudio(
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
