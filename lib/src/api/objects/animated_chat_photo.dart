import '../tdapi.dart';

/// Animated variant of a chat photo in MPEG4 format
class AnimatedChatPhoto extends TdObject {
  AnimatedChatPhoto(
      {required this.length,
      required this.file,
      required this.mainFrameTimestamp});

  /// [length] Animation width and height
  final int length;

  /// [file] Information about the animation file
  final File file;

  /// [mainFrameTimestamp] Timestamp of the frame, used as a static chat photo
  final double mainFrameTimestamp;

  static const String CONSTRUCTOR = 'animatedChatPhoto';

  static AnimatedChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AnimatedChatPhoto(
        length: json['length'],
        file: File.fromJson(json['file'])!,
        mainFrameTimestamp: json['main_frame_timestamp']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'length': this.length,
        'file': this.file.toJson(),
        'main_frame_timestamp': this.mainFrameTimestamp,
        '@type': CONSTRUCTOR
      };
}
