import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with paid media; can be used only in channel chats with
/// supergroupFullInfo.has_paid_media_allowed
@immutable
class InputMessagePaidMedia extends InputMessageContent {
  const InputMessagePaidMedia({
    required this.starCount,
    required this.paidMedia,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.payload,
  });

  /// [starCount] The number of Telegram Stars that must be paid to see the
  /// media; 1-getOption("paid_media_message_star_count_max")
  final int starCount;

  /// [paidMedia] The content of the paid media
  final List<InputPaidMedia> paidMedia;

  /// [caption] Message caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// media; otherwise, the caption must be shown below the media; not supported
  /// in secret chats
  final bool showCaptionAboveMedia;

  /// [payload] Bot-provided data for the paid media; bots only
  final String payload;

  static const String constructor = 'inputMessagePaidMedia';

  static InputMessagePaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePaidMedia(
      starCount: json['star_count'] as int,
      paidMedia: List<InputPaidMedia>.from(
          ((json['paid_media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputPaidMedia.fromJson(item))
              .toList()),
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
      payload: json['payload'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'paid_media': paidMedia.map((item) => item.toJson()).toList(),
        'caption': caption?.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        'payload': payload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
