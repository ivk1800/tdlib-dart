import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns users and chats that were blocked by the current user
/// Returns [MessageSenders]
@immutable
class GetBlockedMessageSenders extends TdFunction {
  const GetBlockedMessageSenders({
    required this.blockList,
    required this.offset,
    required this.limit,
  });

  /// [blockList] Block list from which to return users
  final BlockList blockList;

  /// [offset] Number of users and chats to skip in the result; must be
  /// non-negative
  final int offset;

  /// [limit] The maximum number of users and chats to return; up to 100
  final int limit;

  static const String constructor = 'getBlockedMessageSenders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'block_list': blockList.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
