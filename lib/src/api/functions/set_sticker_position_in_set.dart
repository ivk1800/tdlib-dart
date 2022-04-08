import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the position of a sticker in the set to which it belongs; for bots
/// only. The sticker set must have been created by the bot
/// Returns [Ok]
@immutable
class SetStickerPositionInSet extends TdFunction {
  const SetStickerPositionInSet({
    required this.sticker,
    required this.position,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [position] New position of the sticker in the set, zero-based
  final int position;

  static const String constructor = 'setStickerPositionInSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'position': position,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
