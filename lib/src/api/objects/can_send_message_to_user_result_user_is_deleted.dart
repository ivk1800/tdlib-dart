import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can't be messaged, because they are deleted or unknown
@immutable
class CanSendMessageToUserResultUserIsDeleted
    extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultUserIsDeleted();

  static const String constructor = 'canSendMessageToUserResultUserIsDeleted';

  static CanSendMessageToUserResultUserIsDeleted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendMessageToUserResultUserIsDeleted();
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
