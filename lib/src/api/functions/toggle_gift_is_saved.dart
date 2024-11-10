import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether a gift is shown on the current user's profile page
/// Returns [Ok]
@immutable
class ToggleGiftIsSaved extends TdFunction {
  const ToggleGiftIsSaved({
    required this.senderUserId,
    required this.messageId,
    required this.isSaved,
  });

  /// [senderUserId] Identifier of the user that sent the gift
  final int senderUserId;

  /// [messageId] Identifier of the message with the gift in the chat with the
  /// user
  final int messageId;

  /// [isSaved] Pass true to display the gift on the user's profile page; pass
  /// false to remove it from the profile page
  final bool isSaved;

  static const String constructor = 'toggleGiftIsSaved';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_user_id': senderUserId,
        'message_id': messageId,
        'is_saved': isSaved,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
