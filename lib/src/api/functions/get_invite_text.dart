import '../tdapi.dart';

/// Returns the default text for invitation messages to be used as a
/// placeholder when the current user invites friends to Telegram
/// Returns [Text]
class GetInviteText extends TdFunction {
  GetInviteText();

  static const String CONSTRUCTOR = 'getInviteText';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
