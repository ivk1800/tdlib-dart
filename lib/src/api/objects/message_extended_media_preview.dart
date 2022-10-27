import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is hidden until the invoice is paid
@immutable
class MessageExtendedMediaPreview extends MessageExtendedMedia {
  const MessageExtendedMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
    required this.caption,
  });

  /// [width] Media width; 0 if unknown
  final int width;

  /// [height] Media height; 0 if unknown
  final int height;

  /// [duration] Media duration; 0 if unknown
  final int duration;

  /// [minithumbnail] Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [caption] Media caption
  final FormattedText caption;

  static const String constructor = 'messageExtendedMediaPreview';

  static MessageExtendedMediaPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageExtendedMediaPreview(
      width: json['width'],
      height: json['height'],
      duration: json['duration'],
      minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
      caption: FormattedText.fromJson(json['caption'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'width': width,
        'height': height,
        'duration': duration,
        'minithumbnail': minithumbnail?.toJson(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
