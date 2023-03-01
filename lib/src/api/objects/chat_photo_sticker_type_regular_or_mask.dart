import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about the sticker, which was used to create the chat photo
@immutable
class ChatPhotoStickerTypeRegularOrMask extends ChatPhotoStickerType {
  const ChatPhotoStickerTypeRegularOrMask({
    required this.stickerSetId,
    required this.stickerId,
  });

  /// [stickerSetId] Sticker set identifier
  final int stickerSetId;

  /// [stickerId] Identifier of the sticker in the set
  final int stickerId;

  static const String constructor = 'chatPhotoStickerTypeRegularOrMask';

  static ChatPhotoStickerTypeRegularOrMask? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoStickerTypeRegularOrMask(
      stickerSetId: int.tryParse(json['sticker_set_id']) ?? 0,
      stickerId: int.tryParse(json['sticker_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set_id': stickerSetId,
        'sticker_id': stickerId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
