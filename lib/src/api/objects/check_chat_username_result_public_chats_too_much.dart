import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user has too much chats with username, one of them must be made
/// private first
@immutable
class CheckChatUsernameResultPublicChatsTooMuch
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicChatsTooMuch();

  static const String constructor = 'checkChatUsernameResultPublicChatsTooMuch';

  static CheckChatUsernameResultPublicChatsTooMuch? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicChatsTooMuch();
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
