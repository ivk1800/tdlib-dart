import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns list of chats with non-default notification settings for stories
/// Returns [Chats]
@immutable
class GetStoryNotificationSettingsExceptions extends TdFunction {
  const GetStoryNotificationSettingsExceptions();

  static const String constructor = 'getStoryNotificationSettingsExceptions';

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
