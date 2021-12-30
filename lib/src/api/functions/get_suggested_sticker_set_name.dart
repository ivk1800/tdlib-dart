import '../tdapi.dart';

/// Returns a suggested name for a new sticker set with a given title
/// Returns [Text]
class GetSuggestedStickerSetName extends TdFunction {
  GetSuggestedStickerSetName({required this.title});

  /// [title] Sticker set title; 1-64 characters
  final String title;

  static const String CONSTRUCTOR = 'getSuggestedStickerSetName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'title': this.title, '@type': CONSTRUCTOR};
}