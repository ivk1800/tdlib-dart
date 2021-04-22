import '../tdapi.dart';

/// Manually adds a new sticker to the list of recently used stickers. The new
/// sticker is added to the top of the list. If the sticker was already in the
/// list, it is removed from the list first. Only stickers belonging to a
/// sticker set can be added to this list
/// Returns [Stickers]
class AddRecentSticker extends TdFunction {
  AddRecentSticker({required this.isAttached, required this.sticker});

  /// [isAttached] Pass true to add the sticker to the list of stickers recently
  /// attached to photo or video files; pass false to add the sticker to the
  /// list of recently sent stickers
  final bool isAttached;

  /// [sticker] Sticker file to add
  final InputFile sticker;

  static const String CONSTRUCTOR = 'addRecentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_attached': this.isAttached,
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR
      };
}
