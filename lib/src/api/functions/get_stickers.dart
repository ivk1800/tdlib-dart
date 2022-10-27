import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns stickers from the installed sticker sets that correspond to a
/// given emoji or can be found by sticker-specific keywords. If the query is
/// non-empty, then favorite, recently used or trending stickers may also be
/// returned
/// Returns [Stickers]
@immutable
class GetStickers extends TdFunction {
  const GetStickers({
    required this.stickerType,
    required this.query,
    required this.limit,
    required this.chatId,
  });

  /// [stickerType] Type of the stickers to return
  final StickerType stickerType;

  /// [query] Search query; an emoji or a keyword prefix. If empty, returns all
  /// known installed stickers
  final String query;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  /// [chatId] Chat identifier for which to return stickers. Available custom
  /// emoji stickers may be different for different chats
  final int chatId;

  static const String constructor = 'getStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'query': query,
        'limit': limit,
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
