import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a default placeholder for Web Apps of a bot. This is an offline
/// method. Returns a 404 error if the placeholder isn't known
/// Returns [Outline]
@immutable
class GetWebAppPlaceholder extends TdFunction {
  const GetWebAppPlaceholder({required this.botUserId});

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  static const String constructor = 'getWebAppPlaceholder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
