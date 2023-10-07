import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat is already boosted by the user
@immutable
class CanBoostChatResultAlreadyBoosted extends CanBoostChatResult {
  const CanBoostChatResultAlreadyBoosted();

  static const String constructor = 'canBoostChatResultAlreadyBoosted';

  static CanBoostChatResultAlreadyBoosted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanBoostChatResultAlreadyBoosted();
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
