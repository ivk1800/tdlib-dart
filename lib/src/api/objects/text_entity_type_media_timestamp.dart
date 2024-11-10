import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A media timestamp
@immutable
class TextEntityTypeMediaTimestamp extends TextEntityType {
  const TextEntityTypeMediaTimestamp({
    required this.mediaTimestamp,
  });

  /// [mediaTimestamp] Timestamp from which a video/audio/video note/voice
  /// note/story playing must start, in seconds. The media can be in the content
  /// or the link preview of the current message, or in the same places in the
  /// replied message
  final int mediaTimestamp;

  static const String constructor = 'textEntityTypeMediaTimestamp';

  static TextEntityTypeMediaTimestamp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeMediaTimestamp(
      mediaTimestamp: json['media_timestamp'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'media_timestamp': mediaTimestamp,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
