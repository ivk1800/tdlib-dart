import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns a globally unique push notification subscription identifier for
/// identification of an account, which has received a push notification. Can
/// be called synchronously
/// Returns [PushReceiverId]
class GetPushReceiverId extends TdFunction {
  GetPushReceiverId({required this.payload});

  /// [payload] JSON-encoded push notification payload
  final String payload;

  static const String CONSTRUCTOR = 'getPushReceiverId';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'payload': this.payload, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
