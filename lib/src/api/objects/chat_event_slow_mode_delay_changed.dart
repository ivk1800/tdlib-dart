import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The slow_mode_delay setting of a supergroup was changed
@immutable
class ChatEventSlowModeDelayChanged extends ChatEventAction {
  const ChatEventSlowModeDelayChanged({
    required this.oldSlowModeDelay,
    required this.newSlowModeDelay,
  });

  /// [oldSlowModeDelay] Previous value of slow_mode_delay, in seconds
  final int oldSlowModeDelay;

  /// [newSlowModeDelay] New value of slow_mode_delay, in seconds
  final int newSlowModeDelay;

  static const String constructor = 'chatEventSlowModeDelayChanged';

  static ChatEventSlowModeDelayChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventSlowModeDelayChanged(
      oldSlowModeDelay: json['old_slow_mode_delay'] as int,
      newSlowModeDelay: json['new_slow_mode_delay'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_slow_mode_delay': oldSlowModeDelay,
        'new_slow_mode_delay': newSlowModeDelay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
