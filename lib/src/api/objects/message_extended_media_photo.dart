import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is a photo
@immutable
class MessageExtendedMediaPhoto extends MessageExtendedMedia {
  const MessageExtendedMediaPhoto({
    required this.photo,
    required this.caption,
  });

  /// [photo] The photo
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  static const String constructor = 'messageExtendedMediaPhoto';

  static MessageExtendedMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageExtendedMediaPhoto(
      photo: Photo.fromJson(json['photo'])!,
      caption: FormattedText.fromJson(json['caption'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
