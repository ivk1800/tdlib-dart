import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The payload for a callback button requiring password
@immutable
class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  const CallbackQueryPayloadDataWithPassword({
    required this.password,
    required this.data,
  });

  /// [password] The 2-step verification password for the current user
  final String password;

  /// [data] Data that was attached to the callback button
  final String data;

  static const String constructor = 'callbackQueryPayloadDataWithPassword';

  static CallbackQueryPayloadDataWithPassword? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadDataWithPassword(
      password: json['password'],
      data: json['data'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
