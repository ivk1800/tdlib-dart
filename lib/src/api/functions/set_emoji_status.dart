import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the emoji status of the current user; for Telegram Premium users
/// only
/// Returns [Ok]
@immutable
class SetEmojiStatus extends TdFunction {
  const SetEmojiStatus({
    this.emojiStatus,
    required this.duration,
  });

  /// [emojiStatus] New emoji status; pass null to switch to the default badge
  final EmojiStatus? emojiStatus;

  /// [duration] Duration of the status, in seconds; pass 0 to keep the status
  /// active until it will be changed manually
  final int duration;

  static const String constructor = 'setEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji_status': emojiStatus?.toJson(),
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
