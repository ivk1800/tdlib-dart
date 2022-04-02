import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The payload for a callback button requiring password
class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  CallbackQueryPayloadDataWithPassword(
      {required this.password, required this.data});

  /// [password] The password for the current user
  final String password;

  /// [data] Data that was attached to the callback button
  final String data;

  static const String CONSTRUCTOR = 'callbackQueryPayloadDataWithPassword';

  static CallbackQueryPayloadDataWithPassword? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadDataWithPassword(
        password: json['password'], data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, 'data': this.data, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
