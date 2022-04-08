import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The 2-step verification needs to be enabled first
@immutable
class CanTransferOwnershipResultPasswordNeeded
    extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultPasswordNeeded();

  static const String constructor = 'canTransferOwnershipResultPasswordNeeded';

  static CanTransferOwnershipResultPasswordNeeded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanTransferOwnershipResultPasswordNeeded();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
