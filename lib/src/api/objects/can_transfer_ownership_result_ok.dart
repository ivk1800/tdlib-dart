import '../tdapi.dart';

/// The session can be used
class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultOk();

  static const String CONSTRUCTOR = 'canTransferOwnershipResultOk';

  static CanTransferOwnershipResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanTransferOwnershipResultOk();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
