import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with paid media
@immutable
class MessagePaidMedia extends MessageContent {
  const MessagePaidMedia({
    required this.starCount,
    required this.media,
    required this.caption,
    required this.showCaptionAboveMedia,
  });

  /// [starCount] Number of Telegram Stars needed to buy access to the media in
  /// the message
  final int starCount;

  /// [media] Information about the media
  final List<PaidMedia> media;

  /// [caption] Media caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// media; otherwise, the caption must be shown below the media
  final bool showCaptionAboveMedia;

  static const String constructor = 'messagePaidMedia';

  static MessagePaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaidMedia(
      starCount: json['star_count'] as int,
      media: List<PaidMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidMedia.fromJson(item))
              .toList()),
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'media': media.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
