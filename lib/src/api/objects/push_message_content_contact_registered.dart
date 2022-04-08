import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A contact has registered with Telegram
@immutable
class PushMessageContentContactRegistered extends PushMessageContent {
  const PushMessageContentContactRegistered();

  static const String constructor = 'pushMessageContentContactRegistered';

  static PushMessageContentContactRegistered? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentContactRegistered();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
