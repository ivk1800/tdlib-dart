import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a closed vector path. The path begins at the end point of the
/// last command
@immutable
class ClosedVectorPath extends TdObject {
  const ClosedVectorPath({
    required this.commands,
  });

  /// [commands] List of vector path commands
  final List<VectorPathCommand> commands;

  static const String constructor = 'closedVectorPath';

  static ClosedVectorPath? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ClosedVectorPath(
      commands: List<VectorPathCommand>.from((json['commands'] ?? [])
          .map((item) => VectorPathCommand.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
