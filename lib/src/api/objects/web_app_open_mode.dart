import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes mode in which a Web App is opened
@immutable
abstract class WebAppOpenMode extends TdObject {
  const WebAppOpenMode();

  static const String constructor = 'webAppOpenMode';

  /// Inherited by:
  /// [WebAppOpenModeCompact]
  /// [WebAppOpenModeFullScreen]
  /// [WebAppOpenModeFullSize]
  static WebAppOpenMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case WebAppOpenModeCompact.constructor:
        return WebAppOpenModeCompact.fromJson(json);
      case WebAppOpenModeFullScreen.constructor:
        return WebAppOpenModeFullScreen.fromJson(json);
      case WebAppOpenModeFullSize.constructor:
        return WebAppOpenModeFullSize.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
