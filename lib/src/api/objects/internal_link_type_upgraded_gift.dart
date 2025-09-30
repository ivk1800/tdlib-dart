import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to an upgraded gift. Call getUpgradedGift with the
/// given name to process the link
@immutable
class InternalLinkTypeUpgradedGift extends InternalLinkType {
  const InternalLinkTypeUpgradedGift({required this.name});

  /// [name] Name of the unique gift
  final String name;

  static const String constructor = 'internalLinkTypeUpgradedGift';

  static InternalLinkTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUpgradedGift(name: json['name'] as String);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
