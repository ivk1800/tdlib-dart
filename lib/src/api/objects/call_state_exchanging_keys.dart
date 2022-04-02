import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The call has been answered and encryption keys are being exchanged
class CallStateExchangingKeys extends CallState {
  const CallStateExchangingKeys();

  static const String CONSTRUCTOR = 'callStateExchangingKeys';

  static CallStateExchangingKeys? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallStateExchangingKeys();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
