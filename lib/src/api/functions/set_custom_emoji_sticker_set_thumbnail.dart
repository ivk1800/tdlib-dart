import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets a custom emoji sticker set thumbnail
/// Returns [Ok]
@immutable
class SetCustomEmojiStickerSetThumbnail extends TdFunction {
  const SetCustomEmojiStickerSetThumbnail({
    required this.name,
    required this.customEmojiId,
  });

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  /// [customEmojiId] Identifier of the custom emoji from the sticker set, which
  /// will be set as sticker set thumbnail; pass 0 to remove the sticker set
  /// thumbnail
  final int customEmojiId;

  static const String constructor = 'setCustomEmojiStickerSetThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'custom_emoji_id': customEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
