import '../tdapi.dart';

/// Contains a list of updates
class Updates extends TdObject {
  Updates({required this.updates});

  /// [updates] List of updates
  final List<Update> updates;

  static const String CONSTRUCTOR = 'updates';

  static Updates? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Updates(
        updates: List<Update>.from((json['updates'] ?? [])
            .map((item) => Update.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'updates': updates.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
