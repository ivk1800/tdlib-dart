import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the sticker set of a supergroup; requires can_change_info
/// administrator right
/// Returns [Ok]
@immutable
class SetSupergroupStickerSet extends TdFunction {
  const SetSupergroupStickerSet({
    required this.supergroupId,
    required this.stickerSetId,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [stickerSetId] New value of the supergroup sticker set identifier. Use 0
  /// to remove the supergroup sticker set
  final int stickerSetId;

  static const String constructor = 'setSupergroupStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'sticker_set_id': stickerSetId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
