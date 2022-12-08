import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the default message Time To Live setting (self-destruct timer) for
/// new chats
/// Returns [Ok]
@immutable
class SetDefaultMessageTtl extends TdFunction {
  const SetDefaultMessageTtl({
    required this.ttl,
  });

  /// [ttl] New message TTL; must be from 0 up to 365 * 86400 and be divisible
  /// by 86400. If 0, then messages aren't deleted automatically
  final MessageTtl ttl;

  static const String constructor = 'setDefaultMessageTtl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ttl': ttl.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
