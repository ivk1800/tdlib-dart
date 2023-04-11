import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of trending sticker sets was updated or some of them were viewed
@immutable
class UpdateTrendingStickerSets extends Update {
  const UpdateTrendingStickerSets({
    required this.stickerType,
    required this.stickerSets,
  });

  /// [stickerType] Type of the affected stickers
  final StickerType stickerType;

  /// [stickerSets] The prefix of the list of trending sticker sets with the
  /// newest trending sticker sets
  final TrendingStickerSets stickerSets;

  static const String constructor = 'updateTrendingStickerSets';

  static UpdateTrendingStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTrendingStickerSets(
      stickerType:
          StickerType.fromJson(json['sticker_type'] as Map<String, dynamic>?)!,
      stickerSets: TrendingStickerSets.fromJson(
          json['sticker_sets'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'sticker_sets': stickerSets.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
