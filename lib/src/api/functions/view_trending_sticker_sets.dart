import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Informs the server that some trending sticker sets have been viewed by the
/// user
/// Returns [Ok]
class ViewTrendingStickerSets extends TdFunction {
  ViewTrendingStickerSets({required this.stickerSetIds});

  /// [stickerSetIds] Identifiers of viewed trending sticker sets
  final List<int> stickerSetIds;

  static const String CONSTRUCTOR = 'viewTrendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
