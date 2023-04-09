import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the list of keywords of a sticker; for bots only. The sticker must
/// belong to a regular or custom emoji sticker set created by the bot
/// Returns [Ok]
@immutable
class SetStickerKeywords extends TdFunction {
  const SetStickerKeywords({
    required this.sticker,
    required this.keywords,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [keywords] List of up to 20 keywords with total length up to 64
  /// characters, which can be used to find the sticker
  final List<String> keywords;

  static const String constructor = 'setStickerKeywords';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'keywords': keywords.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
