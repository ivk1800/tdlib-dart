import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of installed sticker sets
/// Returns [StickerSets]
@immutable
class GetInstalledStickerSets extends TdFunction {
  const GetInstalledStickerSets({
    required this.stickerType,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  static const String constructor = 'getInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
