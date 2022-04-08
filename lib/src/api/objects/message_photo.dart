import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A photo message
@immutable
class MessagePhoto extends MessageContent {
  const MessagePhoto({
    required this.photo,
    required this.caption,
    required this.isSecret,
  });

  /// [photo] The photo description
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  /// [isSecret] True, if the photo must be blurred and must be shown only while
  /// tapped
  final bool isSecret;

  static const String constructor = 'messagePhoto';

  static MessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePhoto(
      photo: Photo.fromJson(json['photo'])!,
      caption: FormattedText.fromJson(json['caption'])!,
      isSecret: json['is_secret'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'caption': caption.toJson(),
        'is_secret': isSecret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
