import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A contact has registered with Telegram
class PushMessageContentContactRegistered extends PushMessageContent {
  const PushMessageContentContactRegistered();

  static const String CONSTRUCTOR = 'pushMessageContentContactRegistered';

  static PushMessageContentContactRegistered? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentContactRegistered();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
