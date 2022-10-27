import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Manually adds a new sticker to the list of recently used stickers. The new
/// sticker is added to the top of the list. If the sticker was already in the
/// list, it is removed from the list first. Only stickers belonging to a
/// sticker set can be added to this list. Emoji stickers can't be added to
/// recent stickers
/// Returns [Stickers]
@immutable
class AddRecentSticker extends TdFunction {
  const AddRecentSticker({
    required this.isAttached,
    required this.sticker,
  });

  /// [isAttached] Pass true to add the sticker to the list of stickers recently
  /// attached to photo or video files; pass false to add the sticker to the
  /// list of recently sent stickers
  final bool isAttached;

  /// [sticker] Sticker file to add
  final InputFile sticker;

  static const String constructor = 'addRecentSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_attached': isAttached,
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
