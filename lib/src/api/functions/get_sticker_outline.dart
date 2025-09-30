import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns outline of a sticker. This is an offline method. Returns a 404
/// error if the outline isn't known
/// Returns [Outline]
@immutable
class GetStickerOutline extends TdFunction {
  const GetStickerOutline({
    required this.stickerFileId,
    required this.forAnimatedEmoji,
    required this.forClickedAnimatedEmojiMessage,
  });

  /// [stickerFileId] File identifier of the sticker
  final int stickerFileId;

  /// [forAnimatedEmoji] Pass true to get the outline scaled for animated emoji
  final bool forAnimatedEmoji;

  /// [forClickedAnimatedEmojiMessage] Pass true to get the outline scaled for
  /// clicked animated emoji message
  final bool forClickedAnimatedEmojiMessage;

  static const String constructor = 'getStickerOutline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_file_id': stickerFileId,
    'for_animated_emoji': forAnimatedEmoji,
    'for_clicked_animated_emoji_message': forClickedAnimatedEmojiMessage,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
