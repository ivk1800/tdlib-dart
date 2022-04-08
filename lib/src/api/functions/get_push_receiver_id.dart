import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a globally unique push notification subscription identifier for
/// identification of an account, which has received a push notification. Can
/// be called synchronously
/// Returns [PushReceiverId]
@immutable
class GetPushReceiverId extends TdFunction {
  const GetPushReceiverId({
    required this.payload,
  });

  /// [payload] JSON-encoded push notification payload
  final String payload;

  static const String constructor = 'getPushReceiverId';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'payload': payload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
