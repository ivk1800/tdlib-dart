import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes affiliate program for a bot
/// Returns [Ok]
@immutable
class SetChatAffiliateProgram extends TdFunction {
  const SetChatAffiliateProgram({required this.chatId, this.parameters});

  /// [chatId] Identifier of the chat with an owned bot for which affiliate
  /// program is changed
  final int chatId;

  /// [parameters] Parameters of the affiliate program; pass null to close the
  /// currently active program. If there is an active program, then commission
  /// and program duration can only be increased. If the active program is
  /// scheduled to be closed, then it can't be changed anymore
  final AffiliateProgramParameters? parameters;

  static const String constructor = 'setChatAffiliateProgram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'parameters': parameters?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
