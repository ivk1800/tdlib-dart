import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the change phone number section of the application
@immutable
class InternalLinkTypeChangePhoneNumber extends InternalLinkType {
  const InternalLinkTypeChangePhoneNumber();

  static const String constructor = 'internalLinkTypeChangePhoneNumber';

  static InternalLinkTypeChangePhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeChangePhoneNumber();
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
