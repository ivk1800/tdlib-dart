import '../tdapi.dart';

/// Checks whether the maximum number of owned public chats has been reached.
/// Returns corresponding error if the limit was reached
/// Returns [Ok]
class CheckCreatedPublicChatsLimit extends TdFunction {
  CheckCreatedPublicChatsLimit({required this.type});

  /// [type] Type of the public chats, for which to check the limit
  final PublicChatType type;

  static const String CONSTRUCTOR = 'checkCreatedPublicChatsLimit';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type.toJson(), '@type': CONSTRUCTOR};
}
