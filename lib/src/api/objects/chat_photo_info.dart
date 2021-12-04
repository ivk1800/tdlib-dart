import '../tdapi.dart';

/// Contains basic information about the photo of a chat
class ChatPhotoInfo extends TdObject {
  ChatPhotoInfo(
      {required this.small,
      required this.big,
      this.minithumbnail,
      required this.hasAnimation});

  /// [small] A small (160x160) chat photo variant in JPEG format. The file can
  /// be downloaded only before the photo is changed
  final File small;

  /// [big] A big (640x640) chat photo variant in JPEG format. The file can be
  /// downloaded only before the photo is changed
  final File big;

  /// [minithumbnail] Chat photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;

  static const String CONSTRUCTOR = 'chatPhotoInfo';

  static ChatPhotoInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoInfo(
        small: File.fromJson(json['small'])!,
        big: File.fromJson(json['big'])!,
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        hasAnimation: json['has_animation']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'small': this.small.toJson(),
        'big': this.big.toJson(),
        'minithumbnail': this.minithumbnail?.toJson(),
        'has_animation': this.hasAnimation,
        '@type': CONSTRUCTOR
      };
}
