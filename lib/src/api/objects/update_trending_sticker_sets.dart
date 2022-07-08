import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of trending sticker sets was updated or some of them were viewed
@immutable
class UpdateTrendingStickerSets extends Update {
  const UpdateTrendingStickerSets({
    required this.stickerSets,
  });

  /// [stickerSets] The prefix of the list of trending sticker sets with the
  /// newest trending sticker sets
  final TrendingStickerSets stickerSets;

  static const String constructor = 'updateTrendingStickerSets';

  static UpdateTrendingStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTrendingStickerSets(
      stickerSets: TrendingStickerSets.fromJson(json['sticker_sets'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_sets': stickerSets.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
