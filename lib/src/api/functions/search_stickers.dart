import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for stickers from public sticker sets that correspond to a given
/// emoji
/// Returns [Stickers]
@immutable
class SearchStickers extends TdFunction {
  const SearchStickers({
    required this.emoji,
    required this.limit,
  });

  /// [emoji] String representation of emoji; must be non-empty
  final String emoji;

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;

  static const String constructor = 'searchStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
