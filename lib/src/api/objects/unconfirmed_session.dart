import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an unconfirmed session
@immutable
class UnconfirmedSession extends TdObject {
  const UnconfirmedSession({
    required this.id,
    required this.logInDate,
    required this.deviceModel,
    required this.location,
  });

  /// [id] Session identifier
  final int id;

  /// [logInDate] Point in time (Unix timestamp) when the user has logged in
  final int logInDate;

  /// [deviceModel] Model of the device that was used for the session creation,
  /// as provided by the application
  final String deviceModel;

  /// [location] A human-readable description of the location from which the
  /// session was created, based on the IP address
  final String location;

  static const String constructor = 'unconfirmedSession';

  static UnconfirmedSession? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UnconfirmedSession(
      id: int.tryParse(json['id']) ?? 0,
      logInDate: json['log_in_date'] as int,
      deviceModel: json['device_model'] as String,
      location: json['location'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'log_in_date': logInDate,
        'device_model': deviceModel,
        'location': location,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
