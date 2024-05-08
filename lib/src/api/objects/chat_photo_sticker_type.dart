import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of sticker, which was used to create a chat photo
@immutable
abstract class ChatPhotoStickerType extends TdObject {
  const ChatPhotoStickerType();

  static const String constructor = 'chatPhotoStickerType';

  /// Inherited by:
  /// [ChatPhotoStickerTypeCustomEmoji]
  /// [ChatPhotoStickerTypeRegularOrMask]
  static ChatPhotoStickerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatPhotoStickerTypeCustomEmoji.constructor:
        return ChatPhotoStickerTypeCustomEmoji.fromJson(json);
      case ChatPhotoStickerTypeRegularOrMask.constructor:
        return ChatPhotoStickerTypeRegularOrMask.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
