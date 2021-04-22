import '../tdapi.dart';

/// Returns a list of public chats of the specified type, owned by the user
/// Returns [Chats]
class GetCreatedPublicChats extends TdFunction {
  GetCreatedPublicChats({required this.type});

  /// [type] Type of the public chats to return
  final PublicChatType type;

  static const String CONSTRUCTOR = 'getCreatedPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type.toJson(), '@type': CONSTRUCTOR};
}
