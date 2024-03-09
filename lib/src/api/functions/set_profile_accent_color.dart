import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji for profile of the
/// current user; for Telegram Premium users only
/// Returns [Ok]
@immutable
class SetProfileAccentColor extends TdFunction {
  const SetProfileAccentColor({
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });

  /// [profileAccentColorId] Identifier of the accent color to use for profile;
  /// pass -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the user's profile photo background; 0 if none
  final int profileBackgroundCustomEmojiId;

  static const String constructor = 'setProfileAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id': profileBackgroundCustomEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
