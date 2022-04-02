import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Searches for stickers from public sticker sets that correspond to a given
/// emoji
/// Returns [Stickers]
class SearchStickers extends TdFunction {
  SearchStickers({required this.emoji, required this.limit});

  /// [emoji] String representation of emoji; must be non-empty
  final String emoji;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  static const String CONSTRUCTOR = 'searchStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'emoji': this.emoji, 'limit': this.limit, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
