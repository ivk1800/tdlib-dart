import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of installed sticker sets
/// Returns [Ok]
@immutable
class ReorderInstalledStickerSets extends TdFunction {
  const ReorderInstalledStickerSets({
    required this.isMasks,
    required this.stickerSetIds,
  });

  /// [isMasks] Pass true to change the order of mask sticker sets; pass false
  /// to change the order of ordinary sticker sets
  final bool isMasks;

  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct
  /// order
  final List<int> stickerSetIds;

  static const String constructor = 'reorderInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_masks': isMasks,
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
