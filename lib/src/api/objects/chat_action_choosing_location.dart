import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is picking a location or venue to send
@immutable
class ChatActionChoosingLocation extends ChatAction {
  const ChatActionChoosingLocation();

  static const String constructor = 'chatActionChoosingLocation';

  static ChatActionChoosingLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingLocation();
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
