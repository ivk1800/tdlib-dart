import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message is from a message thread history
@immutable
class MessageSourceMessageThreadHistory extends MessageSource {
  const MessageSourceMessageThreadHistory();

  static const String constructor = 'messageSourceMessageThreadHistory';

  static MessageSourceMessageThreadHistory? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceMessageThreadHistory();
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
