import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message is too old to get read date
@immutable
class MessageReadDateTooOld extends MessageReadDate {
  const MessageReadDateTooOld();

  static const String constructor = 'messageReadDateTooOld';

  static MessageReadDateTooOld? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateTooOld();
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
