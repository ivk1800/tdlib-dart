import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the list of emoji corresponding to a sticker; for bots only. The
/// sticker must belong to a regular or custom emoji sticker set created by
/// the bot
/// Returns [Ok]
@immutable
class SetStickerEmojis extends TdFunction {
  const SetStickerEmojis({
    required this.sticker,
    required this.emojis,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [emojis] New string with 1-20 emoji corresponding to the sticker
  final String emojis;

  static const String constructor = 'setStickerEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'emojis': emojis,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
