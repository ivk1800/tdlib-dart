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
    required this.isPersonal,
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

  /// [isPersonal] True, if the photo is visible only for the current user
  final bool isPersonal;

  static const String constructor = 'chatPhotoInfo';

  static ChatPhotoInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoInfo(
      small: File.fromJson(json['small'] as Map<String, dynamic>?)!,
      big: File.fromJson(json['big'] as Map<String, dynamic>?)!,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
      hasAnimation: json['has_animation'] as bool,
      isPersonal: json['is_personal'] as bool,
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
        'is_personal': isPersonal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
