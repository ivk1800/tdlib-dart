import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The supergroup sticker set was changed
@immutable
class ChatEventStickerSetChanged extends ChatEventAction {
  const ChatEventStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  static const String constructor = 'chatEventStickerSetChanged';

  static ChatEventStickerSetChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventStickerSetChanged(
      oldStickerSetId: int.tryParse(json['old_sticker_set_id']) ?? 0,
      newStickerSetId: int.tryParse(json['new_sticker_set_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_sticker_set_id': oldStickerSetId,
        'new_sticker_set_id': newStickerSetId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
