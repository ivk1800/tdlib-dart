import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of updates
@immutable
class Updates extends TdObject {
  const Updates({
    required this.updates,
  });

  /// [updates] List of updates
  final List<Update> updates;

  static const String constructor = 'updates';

  static Updates? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Updates(
      updates: List<Update>.from((json['updates'] ?? [])
          .map((item) => Update.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'updates': updates.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
