import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs the server that some trending sticker sets have been viewed by the
/// user
/// Returns [Ok]
@immutable
class ViewTrendingStickerSets extends TdFunction {
  const ViewTrendingStickerSets({
    required this.stickerSetIds,
  });

  /// [stickerSetIds] Identifiers of viewed trending sticker sets
  final List<int> stickerSetIds;

  static const String constructor = 'viewTrendingStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
