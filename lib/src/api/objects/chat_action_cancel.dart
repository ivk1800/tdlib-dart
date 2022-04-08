import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user has canceled the previous action
@immutable
class ChatActionCancel extends ChatAction {
  const ChatActionCancel();

  static const String constructor = 'chatActionCancel';

  static ChatActionCancel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionCancel();
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
