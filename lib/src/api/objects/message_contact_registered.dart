import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A contact has registered with Telegram
@immutable
class MessageContactRegistered extends MessageContent {
  const MessageContactRegistered();

  static const String constructor = 'messageContactRegistered';

  static MessageContactRegistered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageContactRegistered();
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
