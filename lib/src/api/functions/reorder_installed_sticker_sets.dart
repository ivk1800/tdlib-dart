import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the order of installed sticker sets
/// Returns [Ok]
class ReorderInstalledStickerSets extends TdFunction {
  ReorderInstalledStickerSets(
      {required this.isMasks, required this.stickerSetIds});

  /// [isMasks] Pass true to change the order of mask sticker sets; pass false
  /// to change the order of ordinary sticker sets
  final bool isMasks;

  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct
  /// order
  final List<int> stickerSetIds;

  static const String CONSTRUCTOR = 'reorderInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_masks': this.isMasks,
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
