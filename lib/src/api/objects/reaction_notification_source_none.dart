import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Notifications for reactions are disabled
@immutable
class ReactionNotificationSourceNone extends ReactionNotificationSource {
  const ReactionNotificationSourceNone();

  static const String constructor = 'reactionNotificationSourceNone';

  static ReactionNotificationSourceNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceNone();
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
