import '../tdapi.dart';

/// Returns users and chats that were blocked by the current user
/// Returns [MessageSenders]
class GetBlockedMessageSenders extends TdFunction {
  GetBlockedMessageSenders({required this.offset, required this.limit});

  /// [offset] Number of users and chats to skip in the result; must be
  /// non-negative
  final int offset;

  /// [limit] The maximum number of users and chats to return; up to 100
  final int limit;

  static const String CONSTRUCTOR = 'getBlockedMessageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'offset': this.offset, 'limit': this.limit, '@type': CONSTRUCTOR};
}
