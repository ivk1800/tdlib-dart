import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call is pending, waiting to be accepted by a user
@immutable
class CallStatePending extends CallState {
  const CallStatePending({
    required this.isCreated,
    required this.isReceived,
  });

  /// [isCreated] True, if the call has already been created by the server
  final bool isCreated;

  /// [isReceived] True, if the call has already been received by the other
  /// party
  final bool isReceived;

  static const String constructor = 'callStatePending';

  static CallStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStatePending(
      isCreated: json['is_created'],
      isReceived: json['is_received'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_created': isCreated,
        'is_received': isReceived,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
