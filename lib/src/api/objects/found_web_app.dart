import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Web App found by its short name
@immutable
class FoundWebApp extends TdObject {
  const FoundWebApp({
    required this.webApp,
    required this.requestWriteAccess,
    required this.skipConfirmation,
  });

  /// [webApp] The Web App
  final WebApp webApp;

  /// [requestWriteAccess] True, if the user must be asked for the permission to
  /// the bot to send them messages
  final bool requestWriteAccess;

  /// [skipConfirmation] True, if there is no need to show an ordinary open URL
  /// confirmation before opening the Web App. The field must be ignored and
  /// confirmation must be shown anyway if the Web App link was hidden
  final bool skipConfirmation;

  static const String constructor = 'foundWebApp';

  static FoundWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundWebApp(
      webApp: WebApp.fromJson(json['web_app'])!,
      requestWriteAccess: json['request_write_access'],
      skipConfirmation: json['skip_confirmation'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app': webApp.toJson(),
        'request_write_access': requestWriteAccess,
        'skip_confirmation': skipConfirmation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
