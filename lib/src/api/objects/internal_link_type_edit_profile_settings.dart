import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the edit profile section of the app settings
@immutable
class InternalLinkTypeEditProfileSettings extends InternalLinkType {
  const InternalLinkTypeEditProfileSettings();

  static const String constructor = 'internalLinkTypeEditProfileSettings';

  static InternalLinkTypeEditProfileSettings? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeEditProfileSettings();
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
