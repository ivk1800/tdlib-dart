import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can't be messaged, because they restrict new chats with
/// non-contacts
@immutable
class CanSendMessageToUserResultUserRestrictsNewChats
    extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultUserRestrictsNewChats();

  static const String constructor =
      'canSendMessageToUserResultUserRestrictsNewChats';

  static CanSendMessageToUserResultUserRestrictsNewChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendMessageToUserResultUserRestrictsNewChats();
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
