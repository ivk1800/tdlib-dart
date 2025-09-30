import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns approximate number of bots similar to the given bot
/// Returns [Count]
@immutable
class GetBotSimilarBotCount extends TdFunction {
  const GetBotSimilarBotCount({
    required this.botUserId,
    required this.returnLocal,
  });

  /// [botUserId] User identifier of the target bot
  final int botUserId;

  /// [returnLocal] Pass true to get the number of bots without sending network
  /// requests, or -1 if the number of bots is unknown locally
  final bool returnLocal;

  static const String constructor = 'getBotSimilarBotCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'return_local': returnLocal,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
