import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A URL linking to a public supergroup or channel
class TMeUrlTypeSupergroup extends TMeUrlType {
  TMeUrlTypeSupergroup({required this.supergroupId});

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  static const String CONSTRUCTOR = 'tMeUrlTypeSupergroup';

  static TMeUrlTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeSupergroup(supergroupId: json['supergroup_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'supergroup_id': this.supergroupId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
