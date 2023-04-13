import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message was sent by an opened Web App, so the Web App needs to be closed
@immutable
class UpdateWebAppMessageSent extends Update {
  const UpdateWebAppMessageSent({
    required this.webAppLaunchId,
  });

  /// [webAppLaunchId] Identifier of Web App launch
  final int webAppLaunchId;

  static const String constructor = 'updateWebAppMessageSent';

  static UpdateWebAppMessageSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateWebAppMessageSent(
      webAppLaunchId: int.tryParse(json['web_app_launch_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app_launch_id': webAppLaunchId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
