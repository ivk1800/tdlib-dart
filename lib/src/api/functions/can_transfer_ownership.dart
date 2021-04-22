import '../tdapi.dart';

/// Checks whether the current session can be used to transfer a chat
/// ownership to another user
/// Returns [CanTransferOwnershipResult]
class CanTransferOwnership extends TdFunction {
  CanTransferOwnership();

  static const String CONSTRUCTOR = 'canTransferOwnership';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
