import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of installed sticker sets
/// Returns [StickerSets]
@immutable
class GetInstalledStickerSets extends TdFunction {
  const GetInstalledStickerSets({
    required this.isMasks,
  });

  /// [isMasks] Pass true to return mask sticker sets; pass false to return
  /// ordinary sticker sets
  final bool isMasks;

  static const String constructor = 'getInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_masks': isMasks,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
