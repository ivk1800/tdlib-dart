import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The Web App is opened in the full-screen mode
@immutable
class WebAppOpenModeFullScreen extends WebAppOpenMode {
  const WebAppOpenModeFullScreen();

  static const String constructor = 'webAppOpenModeFullScreen';

  static WebAppOpenModeFullScreen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebAppOpenModeFullScreen();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
