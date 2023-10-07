import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat can be boosted
@immutable
class CanBoostChatResultOk extends CanBoostChatResult {
  const CanBoostChatResultOk({
    required this.currentlyBoostedChatId,
  });

  /// [currentlyBoostedChatId] Identifier of the currently boosted chat from
  /// which boost will be removed; 0 if none
  final int currentlyBoostedChatId;

  static const String constructor = 'canBoostChatResultOk';

  static CanBoostChatResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanBoostChatResultOk(
      currentlyBoostedChatId: json['currently_boosted_chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currently_boosted_chat_id': currentlyBoostedChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
