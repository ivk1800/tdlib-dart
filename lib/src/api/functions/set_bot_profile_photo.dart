import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes a profile photo for a bot
/// Returns [Ok]
@immutable
class SetBotProfilePhoto extends TdFunction {
  const SetBotProfilePhoto({
    required this.botUserId,
    this.photo,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [photo] Profile photo to set; pass null to delete the chat photo
  final InputChatPhoto? photo;

  static const String constructor = 'setBotProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
