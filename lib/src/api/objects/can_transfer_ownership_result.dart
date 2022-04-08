import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether the current session can be used to
/// transfer a chat ownership to another user
@immutable
abstract class CanTransferOwnershipResult extends TdObject {
  const CanTransferOwnershipResult();

  static const String constructor = 'canTransferOwnershipResult';

  /// Inherited by:
  /// [CanTransferOwnershipResultOk]
  /// [CanTransferOwnershipResultPasswordNeeded]
  /// [CanTransferOwnershipResultPasswordTooFresh]
  /// [CanTransferOwnershipResultSessionTooFresh]
  static CanTransferOwnershipResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanTransferOwnershipResultOk.constructor:
        return CanTransferOwnershipResultOk.fromJson(json);
      case CanTransferOwnershipResultPasswordNeeded.constructor:
        return CanTransferOwnershipResultPasswordNeeded.fromJson(json);
      case CanTransferOwnershipResultPasswordTooFresh.constructor:
        return CanTransferOwnershipResultPasswordTooFresh.fromJson(json);
      case CanTransferOwnershipResultSessionTooFresh.constructor:
        return CanTransferOwnershipResultSessionTooFresh.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
