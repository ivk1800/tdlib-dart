import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The call is pending, waiting to be accepted by a user
class CallStatePending extends CallState {
  CallStatePending({required this.isCreated, required this.isReceived});

  /// [isCreated] True, if the call has already been created by the server
  final bool isCreated;

  /// [isReceived] True, if the call has already been received by the other
  /// party
  final bool isReceived;

  static const String CONSTRUCTOR = 'callStatePending';

  static CallStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStatePending(
        isCreated: json['is_created'], isReceived: json['is_received']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_created': this.isCreated,
        'is_received': this.isReceived,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
