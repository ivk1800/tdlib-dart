import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about the photo of a chat
@immutable
class ChatPhotoInfo extends TdObject {
  const ChatPhotoInfo({
    required this.small,
    required this.big,
    this.minithumbnail,
    required this.hasAnimation,
  });

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

  static const String constructor = 'chatPhotoInfo';

  static ChatPhotoInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoInfo(
      small: File.fromJson(json['small'])!,
      big: File.fromJson(json['big'])!,
      minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
      hasAnimation: json['has_animation'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'small': small.toJson(),
        'big': big.toJson(),
        'minithumbnail': minithumbnail?.toJson(),
        'has_animation': hasAnimation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
