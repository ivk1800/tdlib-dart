import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of trending sticker sets
@immutable
class TrendingStickerSets extends TdObject {
  const TrendingStickerSets({
    required this.totalCount,
    required this.sets,
    required this.isPremium,
  });

  /// [totalCount] Approximate total number of trending sticker sets
  final int totalCount;

  /// [sets] List of trending sticker sets
  final List<StickerSetInfo> sets;

  /// [isPremium] True, if the list contains sticker sets with premium stickers
  final bool isPremium;

  static const String constructor = 'trendingStickerSets';

  static TrendingStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TrendingStickerSets(
      totalCount: json['total_count'],
      sets: List<StickerSetInfo>.from((json['sets'] ?? [])
          .map((item) => StickerSetInfo.fromJson(item))
          .toList()),
      isPremium: json['is_premium'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'sets': sets.map((item) => item.toJson()).toList(),
        'is_premium': isPremium,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
