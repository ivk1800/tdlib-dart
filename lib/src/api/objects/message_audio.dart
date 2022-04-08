import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An audio message
@immutable
class MessageAudio extends MessageContent {
  const MessageAudio({
    required this.audio,
    required this.caption,
  });

  /// [audio] The audio description
  final Audio audio;

  /// [caption] Audio caption
  final FormattedText caption;

  static const String constructor = 'messageAudio';

  static MessageAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAudio(
      audio: Audio.fromJson(json['audio'])!,
      caption: FormattedText.fromJson(json['caption'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio.toJson(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
