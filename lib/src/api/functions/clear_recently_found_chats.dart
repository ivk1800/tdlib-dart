import '../tdapi.dart';

/// Clears the list of recently found chats
/// Returns [Ok]
class ClearRecentlyFoundChats extends TdFunction {
  ClearRecentlyFoundChats();

  static const String CONSTRUCTOR = 'clearRecentlyFoundChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
