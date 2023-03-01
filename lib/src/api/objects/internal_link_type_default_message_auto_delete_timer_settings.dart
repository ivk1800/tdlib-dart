import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the default message auto-delete timer settings
/// section of the app settings
@immutable
class InternalLinkTypeDefaultMessageAutoDeleteTimerSettings
    extends InternalLinkType {
  const InternalLinkTypeDefaultMessageAutoDeleteTimerSettings();

  static const String constructor =
      'internalLinkTypeDefaultMessageAutoDeleteTimerSettings';

  static InternalLinkTypeDefaultMessageAutoDeleteTimerSettings? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeDefaultMessageAutoDeleteTimerSettings();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
