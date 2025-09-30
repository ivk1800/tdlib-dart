import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Loads more topics in a channel direct messages chat administered by the
/// current user. The loaded topics will be sent through
/// updateDirectMessagesChatTopic. Topics are sorted by their topic.order in
/// descending order. Returns a 404 error if all topics have been loaded
/// Returns [Ok]
@immutable
class LoadDirectMessagesChatTopics extends TdFunction {
  const LoadDirectMessagesChatTopics({
    required this.chatId,
    required this.limit,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [limit] The maximum number of topics to be loaded. For optimal
  /// performance, the number of loaded topics is chosen by TDLib and can be
  /// smaller than the specified limit, even if the end of the list is not
  /// reached
  final int limit;

  static const String constructor = 'loadDirectMessagesChatTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'limit': limit,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
