import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes gifts available for resale
@immutable
class GiftsForResale extends TdObject {
  const GiftsForResale({
    required this.totalCount,
    required this.gifts,
    required this.models,
    required this.symbols,
    required this.backdrops,
    required this.nextOffset,
  });

  /// [totalCount] Total number of gifts found
  final int totalCount;

  /// [gifts] The gifts
  final List<GiftForResale> gifts;

  /// [models] Available models; for searchGiftsForResale requests without
  /// offset and attributes only
  final List<UpgradedGiftModelCount> models;

  /// [symbols] Available symbols; for searchGiftsForResale requests without
  /// offset and attributes only
  final List<UpgradedGiftSymbolCount> symbols;

  /// [backdrops] Available backdrops; for searchGiftsForResale requests without
  /// offset and attributes only
  final List<UpgradedGiftBackdropCount> backdrops;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'giftsForResale';

  static GiftsForResale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftsForResale(
      totalCount: json['total_count'] as int,
      gifts: List<GiftForResale>.from(
        ((json['gifts'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => GiftForResale.fromJson(item))
            .toList(),
      ),
      models: List<UpgradedGiftModelCount>.from(
        ((json['models'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => UpgradedGiftModelCount.fromJson(item))
            .toList(),
      ),
      symbols: List<UpgradedGiftSymbolCount>.from(
        ((json['symbols'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => UpgradedGiftSymbolCount.fromJson(item))
            .toList(),
      ),
      backdrops: List<UpgradedGiftBackdropCount>.from(
        ((json['backdrops'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => UpgradedGiftBackdropCount.fromJson(item))
            .toList(),
      ),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'gifts': gifts.map((item) => item.toJson()).toList(),
    'models': models.map((item) => item.toJson()).toList(),
    'symbols': symbols.map((item) => item.toJson()).toList(),
    'backdrops': backdrops.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
