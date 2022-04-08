import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of sticker sets attached to a file. Currently, only photos
/// and videos can have attached sticker sets
/// Returns [StickerSets]
@immutable
class GetAttachedStickerSets extends TdFunction {
  const GetAttachedStickerSets({
    required this.fileId,
  });

  /// [fileId] File identifier
  final int fileId;

  static const String constructor = 'getAttachedStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
