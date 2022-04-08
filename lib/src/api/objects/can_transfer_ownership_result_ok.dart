import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session can be used
@immutable
class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultOk();

  static const String constructor = 'canTransferOwnershipResultOk';

  static CanTransferOwnershipResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanTransferOwnershipResultOk();
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
