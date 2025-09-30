import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an affiliate program that were connected to the given affiliate by
/// identifier of the bot that created the program
/// Returns [ConnectedAffiliateProgram]
@immutable
class GetConnectedAffiliateProgram extends TdFunction {
  const GetConnectedAffiliateProgram({
    required this.affiliate,
    required this.botUserId,
  });

  /// [affiliate] The affiliate to which the affiliate program will be connected
  final AffiliateType affiliate;

  /// [botUserId] Identifier of the bot that created the program
  final int botUserId;

  static const String constructor = 'getConnectedAffiliateProgram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'affiliate': affiliate.toJson(),
    'bot_user_id': botUserId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
