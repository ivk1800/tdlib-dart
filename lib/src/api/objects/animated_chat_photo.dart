import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Animated variant of a chat photo in MPEG4 format
@immutable
class AnimatedChatPhoto extends TdObject {
  const AnimatedChatPhoto({
    required this.length,
    required this.file,
    required this.mainFrameTimestamp,
  });

  /// [length] Animation width and height
  final int length;

  /// [file] Information about the animation file
  final File file;

  /// [mainFrameTimestamp] Timestamp of the frame, used as a static chat photo
  final double mainFrameTimestamp;

  static const String constructor = 'animatedChatPhoto';

  static AnimatedChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AnimatedChatPhoto(
      length: json['length'] as int,
      file: File.fromJson(json['file'] as Map<String, dynamic>?)!,
      mainFrameTimestamp: (json['main_frame_timestamp'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'length': length,
        'file': file.toJson(),
        'main_frame_timestamp': mainFrameTimestamp,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
