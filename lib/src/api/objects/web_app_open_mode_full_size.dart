import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The Web App is opened in the full-size mode
@immutable
class WebAppOpenModeFullSize extends WebAppOpenMode {
  const WebAppOpenModeFullSize();

  static const String constructor = 'webAppOpenModeFullSize';

  static WebAppOpenModeFullSize? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebAppOpenModeFullSize();
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
