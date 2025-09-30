import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a found affiliate program
@immutable
class FoundAffiliateProgram extends TdObject {
  const FoundAffiliateProgram({required this.botUserId, required this.info});

  /// [botUserId] User identifier of the bot created the program
  final int botUserId;

  /// [info] Information about the affiliate program
  final AffiliateProgramInfo info;

  static const String constructor = 'foundAffiliateProgram';

  static FoundAffiliateProgram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundAffiliateProgram(
      botUserId: json['bot_user_id'] as int,
      info: AffiliateProgramInfo.fromJson(
        json['info'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'info': info.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
