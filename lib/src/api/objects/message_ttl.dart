import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains default message Time To Live setting (self-destruct timer) for
/// new chats
@immutable
class MessageTtl extends TdObject {
  const MessageTtl({
    required this.ttl,
  });

  /// [ttl] Message TTL setting, in seconds. If 0, then messages aren't deleted
  /// automatically
  final int ttl;

  static const String constructor = 'messageTtl';

  static MessageTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTtl(
      ttl: json['ttl'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ttl': ttl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
