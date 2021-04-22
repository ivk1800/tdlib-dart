import '../tdapi.dart';

/// An animation in MPEG4 format; must be square, at most 10 seconds long,
/// have width between 160 and 800 and be at most 2MB in size
class InputChatPhotoAnimation extends InputChatPhoto {
  InputChatPhotoAnimation(
      {required this.animation, required this.mainFrameTimestamp});

  /// [animation] Animation to be set as profile photo. Only inputFileLocal and
  /// inputFileGenerated are allowed
  final InputFile animation;

  /// [mainFrameTimestamp] Timestamp of the frame, which will be used as static
  /// chat photo
  final double mainFrameTimestamp;

  static const String CONSTRUCTOR = 'inputChatPhotoAnimation';

  static InputChatPhotoAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoAnimation(
        animation: InputFile.fromJson(json['animation'])!,
        mainFrameTimestamp: json['main_frame_timestamp']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animation': this.animation.toJson(),
        'main_frame_timestamp': this.mainFrameTimestamp,
        '@type': CONSTRUCTOR
      };
}
