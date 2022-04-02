import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns a list of sticker sets attached to a file. Currently, only photos
/// and videos can have attached sticker sets
/// Returns [StickerSets]
class GetAttachedStickerSets extends TdFunction {
  GetAttachedStickerSets({required this.fileId});

  /// [fileId] File identifier
  final int fileId;

  static const String CONSTRUCTOR = 'getAttachedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
