import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link forces restore of App Store purchases when opened. For official
/// iOS application only
@immutable
class InternalLinkTypeRestorePurchases extends InternalLinkType {
  const InternalLinkTypeRestorePurchases();

  static const String constructor = 'internalLinkTypeRestorePurchases';

  static InternalLinkTypeRestorePurchases? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeRestorePurchases();
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
