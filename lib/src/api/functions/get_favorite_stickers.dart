import '../tdapi.dart';

/// Returns favorite stickers
/// Returns [Stickers]
class GetFavoriteStickers extends TdFunction {
  GetFavoriteStickers();

  static const String CONSTRUCTOR = 'getFavoriteStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
