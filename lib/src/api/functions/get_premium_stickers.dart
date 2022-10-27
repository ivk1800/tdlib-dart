import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns premium stickers from regular sticker sets
/// Returns [Stickers]
@immutable
class GetPremiumStickers extends TdFunction {
  const GetPremiumStickers({
    required this.limit,
  });

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;

  static const String constructor = 'getPremiumStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
