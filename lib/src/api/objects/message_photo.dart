import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A photo message
class MessagePhoto extends MessageContent {
  MessagePhoto(
      {required this.photo, required this.caption, required this.isSecret});

  /// [photo] The photo description
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  /// [isSecret] True, if the photo must be blurred and must be shown only while
  /// tapped
  final bool isSecret;

  static const String CONSTRUCTOR = 'messagePhoto';

  static MessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePhoto(
        photo: Photo.fromJson(json['photo'])!,
        caption: FormattedText.fromJson(json['caption'])!,
        isSecret: json['is_secret']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo.toJson(),
        'caption': this.caption.toJson(),
        'is_secret': this.isSecret,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
