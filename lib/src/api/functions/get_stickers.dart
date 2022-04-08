import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns stickers from the installed sticker sets that correspond to a
/// given emoji. If the emoji is non-empty, favorite and recently used
/// stickers may also be returned
/// Returns [Stickers]
@immutable
class GetStickers extends TdFunction {
  const GetStickers({
    required this.emoji,
    required this.limit,
  });

  /// [emoji] String representation of emoji. If empty, returns all known
  /// installed stickers
  final String emoji;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  static const String constructor = 'getStickers';

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
