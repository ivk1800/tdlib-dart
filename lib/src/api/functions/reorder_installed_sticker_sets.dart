import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of installed sticker sets
/// Returns [Ok]
@immutable
class ReorderInstalledStickerSets extends TdFunction {
  const ReorderInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
  });

  /// [stickerType] Type of the sticker sets to reorder
  final StickerType stickerType;

  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct
  /// order
  final List<int> stickerSetIds;

  static const String constructor = 'reorderInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
