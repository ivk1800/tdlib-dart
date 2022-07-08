import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the language settings section of the app
@immutable
class InternalLinkTypeLanguageSettings extends InternalLinkType {
  const InternalLinkTypeLanguageSettings();

  static const String constructor = 'internalLinkTypeLanguageSettings';

  static InternalLinkTypeLanguageSettings? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeLanguageSettings();
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
