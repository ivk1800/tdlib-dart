import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the emoji status of a user; for bots only
/// Returns [Ok]
@immutable
class SetUserEmojiStatus extends TdFunction {
  const SetUserEmojiStatus({required this.userId, this.emojiStatus});

  /// [userId] Identifier of the user
  final int userId;

  /// [emojiStatus] New emoji status; pass null to switch to the default badge
  final EmojiStatus? emojiStatus;

  static const String constructor = 'setUserEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'emoji_status': emojiStatus?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
