import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat is sponsored by the user's MTProxy server
@immutable
class ChatSourceMtprotoProxy extends ChatSource {
  const ChatSourceMtprotoProxy();

  static const String constructor = 'chatSourceMtprotoProxy';

  static ChatSourceMtprotoProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatSourceMtprotoProxy();
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
