import '../tdapi.dart';

/// A media timestamp
class TextEntityTypeMediaTimestamp extends TextEntityType {
  TextEntityTypeMediaTimestamp({required this.mediaTimestamp});

  /// [mediaTimestamp] Timestamp from which a video/audio/video note/voice note
  /// playing must start, in seconds. The media can be in the content or the web
  /// page preview of the current message, or in the same places in the replied
  /// message
  final int mediaTimestamp;

  static const String CONSTRUCTOR = 'textEntityTypeMediaTimestamp';

  static TextEntityTypeMediaTimestamp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeMediaTimestamp(
        mediaTimestamp: json['media_timestamp']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'media_timestamp': this.mediaTimestamp, '@type': CONSTRUCTOR};
}
