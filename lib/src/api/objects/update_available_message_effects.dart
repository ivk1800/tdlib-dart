import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of available message effects has changed
@immutable
class UpdateAvailableMessageEffects extends Update {
  const UpdateAvailableMessageEffects({
    required this.reactionEffectIds,
    required this.stickerEffectIds,
  });

  /// [reactionEffectIds] The new list of available message effects from emoji
  /// reactions
  final List<int> reactionEffectIds;

  /// [stickerEffectIds] The new list of available message effects from Premium
  /// stickers
  final List<int> stickerEffectIds;

  static const String constructor = 'updateAvailableMessageEffects';

  static UpdateAvailableMessageEffects? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAvailableMessageEffects(
      reactionEffectIds: List<int>.from(
          ((json['reaction_effect_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      stickerEffectIds: List<int>.from(
          ((json['sticker_effect_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction_effect_ids': reactionEffectIds.map((item) => item).toList(),
        'sticker_effect_ids': stickerEffectIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
