import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The 2-step verification needs to be enabled first
class CanTransferOwnershipResultPasswordNeeded
    extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultPasswordNeeded();

  static const String CONSTRUCTOR = 'canTransferOwnershipResultPasswordNeeded';

  static CanTransferOwnershipResultPasswordNeeded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanTransferOwnershipResultPasswordNeeded();
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
