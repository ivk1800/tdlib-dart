import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the default message auto-delete time for new chats
/// Returns [Ok]
@immutable
class SetDefaultMessageAutoDeleteTime extends TdFunction {
  const SetDefaultMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
  });

  /// [messageAutoDeleteTime] New default message auto-delete time; must be from
  /// 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't
  /// deleted automatically
  final MessageAutoDeleteTime messageAutoDeleteTime;

  static const String constructor = 'setDefaultMessageAutoDeleteTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_auto_delete_time': messageAutoDeleteTime.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
