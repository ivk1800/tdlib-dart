import '../tdapi.dart';

/// An audio file
class PageBlockAudio extends PageBlock {
  PageBlockAudio({this.audio, required this.caption});

  /// [audio] Audio file; may be null
  final Audio? audio;

  /// [caption] Audio file caption
  final PageBlockCaption caption;

  static const String CONSTRUCTOR = 'pageBlockAudio';

  static PageBlockAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAudio(
        audio: Audio.fromJson(json['audio']),
        caption: PageBlockCaption.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'audio': this.audio?.toJson(),
        'caption': this.caption.toJson(),
        '@type': CONSTRUCTOR
      };
}
