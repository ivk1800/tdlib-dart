import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a previously opened Web App was closed
/// Returns [Ok]
@immutable
class CloseWebApp extends TdFunction {
  const CloseWebApp({
    required this.webAppLaunchId,
  });

  /// [webAppLaunchId] Identifier of Web App launch, received from openWebApp
  final int webAppLaunchId;

  static const String constructor = 'closeWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app_launch_id': webAppLaunchId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
