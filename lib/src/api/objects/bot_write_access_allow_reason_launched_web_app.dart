import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user launched a Web App using getWebAppLinkUrl
@immutable
class BotWriteAccessAllowReasonLaunchedWebApp
    extends BotWriteAccessAllowReason {
  const BotWriteAccessAllowReasonLaunchedWebApp({
    required this.webApp,
  });

  /// [webApp] Information about the Web App
  final WebApp webApp;

  static const String constructor = 'botWriteAccessAllowReasonLaunchedWebApp';

  static BotWriteAccessAllowReasonLaunchedWebApp? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotWriteAccessAllowReasonLaunchedWebApp(
      webApp: WebApp.fromJson(json['web_app'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app': webApp.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
