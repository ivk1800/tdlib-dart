import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of custom emoji stickers by their identifiers. Stickers
/// are returned in arbitrary order. Only found stickers are returned
/// Returns [Stickers]
@immutable
class GetCustomEmojiStickers extends TdFunction {
  const GetCustomEmojiStickers({
    required this.customEmojiIds,
  });

  /// [customEmojiIds] Identifiers of custom emoji stickers. At most 200 custom
  /// emoji stickers can be received simultaneously
  final List<int> customEmojiIds;

  static const String constructor = 'getCustomEmojiStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_ids': customEmojiIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
