import '../tdapi.dart';

/// Returns a list of recently inactive supergroups and channels. Can be used
/// when user reaches limit on the number of joined supergroups and channels
/// and receives CHANNELS_TOO_MUCH error
/// Returns [Chats]
class GetInactiveSupergroupChats extends TdFunction {
  GetInactiveSupergroupChats();

  static const String CONSTRUCTOR = 'getInactiveSupergroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
