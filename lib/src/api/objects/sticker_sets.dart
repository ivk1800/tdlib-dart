import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of sticker sets
@immutable
class StickerSets extends TdObject {
  const StickerSets({
    required this.totalCount,
    required this.sets,
  });

  /// [totalCount] Approximate total number of sticker sets found
  final int totalCount;

  /// [sets] List of sticker sets
  final List<StickerSetInfo> sets;

  static const String constructor = 'stickerSets';

  static StickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSets(
      totalCount: json['total_count'],
      sets: List<StickerSetInfo>.from((json['sets'] ?? [])
          .map((item) => StickerSetInfo.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'sets': sets.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
