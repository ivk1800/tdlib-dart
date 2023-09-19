import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a custom request from a Web App
/// Returns [CustomRequestResult]
@immutable
class SendWebAppCustomRequest extends TdFunction {
  const SendWebAppCustomRequest({
    required this.botUserId,
    required this.method,
    required this.parameters,
  });

  /// [botUserId] Identifier of the bot
  final int botUserId;

  /// [method] The method name
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;

  static const String constructor = 'sendWebAppCustomRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'method': method,
        'parameters': parameters,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
