import '../tdapi.dart';

/// Returns a list of installed sticker sets
/// Returns [StickerSets]
class GetInstalledStickerSets extends TdFunction {
  GetInstalledStickerSets({required this.isMasks});

  /// [isMasks] Pass true to return mask sticker sets; pass false to return
  /// ordinary sticker sets
  final bool isMasks;

  static const String CONSTRUCTOR = 'getInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'is_masks': this.isMasks, '@type': CONSTRUCTOR};
}
