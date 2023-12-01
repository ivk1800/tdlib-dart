import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji for the current user; for
/// Telegram Premium users only
/// Returns [Ok]
@immutable
class SetAccentColor extends TdFunction {
  const SetAccentColor({
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
  });

  /// [accentColorId] Identifier of the accent color to use
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header background; 0 if none
  final int backgroundCustomEmojiId;

  static const String constructor = 'setAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
