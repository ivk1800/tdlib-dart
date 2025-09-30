import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a symbol shown on the pattern of an upgraded gift
@immutable
class UpgradedGiftSymbolCount extends TdObject {
  const UpgradedGiftSymbolCount({
    required this.symbol,
    required this.totalCount,
  });

  /// [symbol] The symbol
  final UpgradedGiftSymbol symbol;

  /// [totalCount] Total number of gifts with the symbol
  final int totalCount;

  static const String constructor = 'upgradedGiftSymbolCount';

  static UpgradedGiftSymbolCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftSymbolCount(
      symbol: UpgradedGiftSymbol.fromJson(
        json['symbol'] as Map<String, dynamic>?,
      )!,
      totalCount: json['total_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'symbol': symbol.toJson(),
    'total_count': totalCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
