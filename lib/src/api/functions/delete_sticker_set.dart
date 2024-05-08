import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Completely deletes a sticker set
/// Returns [Ok]
@immutable
class DeleteStickerSet extends TdFunction {
  const DeleteStickerSet({
    required this.name,
  });

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  static const String constructor = 'deleteStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
