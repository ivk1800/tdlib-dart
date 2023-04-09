import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a Web App by its short name. Returns a 404 error
/// if the Web App is not found
/// Returns [FoundWebApp]
@immutable
class SearchWebApp extends TdFunction {
  const SearchWebApp({
    required this.botUserId,
    required this.webAppShortName,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  static const String constructor = 'searchWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'web_app_short_name': webAppShortName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
