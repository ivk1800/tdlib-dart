import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a sticker from the list of recently used stickers
/// Returns [Ok]
@immutable
class RemoveRecentSticker extends TdFunction {
  const RemoveRecentSticker({
    required this.isAttached,
    required this.sticker,
  });

  /// [isAttached] Pass true to remove the sticker from the list of stickers
  /// recently attached to photo or video files; pass false to remove the
  /// sticker from the list of recently sent stickers
  final bool isAttached;

  /// [sticker] Sticker file to delete
  final InputFile sticker;

  static const String constructor = 'removeRecentSticker';

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
