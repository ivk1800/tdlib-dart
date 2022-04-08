import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a sticker set by its identifier
/// Returns [StickerSet]
@immutable
class GetStickerSet extends TdFunction {
  const GetStickerSet({
    required this.setId,
  });

  /// [setId] Identifier of the sticker set
  final int setId;

  static const String constructor = 'getStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'set_id': setId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
