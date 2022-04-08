import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the owner and administrators
@immutable
class ChatMembersFilterAdministrators extends ChatMembersFilter {
  const ChatMembersFilterAdministrators();

  static const String constructor = 'chatMembersFilterAdministrators';

  static ChatMembersFilterAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterAdministrators();
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
