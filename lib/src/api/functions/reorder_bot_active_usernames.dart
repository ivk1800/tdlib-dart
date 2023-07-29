import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes order of active usernames of a bot. Can be called only if
/// userTypeBot.can_be_edited == true
/// Returns [Ok]
@immutable
class ReorderBotActiveUsernames extends TdFunction {
  const ReorderBotActiveUsernames({
    required this.botUserId,
    required this.usernames,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [usernames] The new order of active usernames. All currently active
  /// usernames must be specified
  final List<String> usernames;

  static const String constructor = 'reorderBotActiveUsernames';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'usernames': usernames.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
