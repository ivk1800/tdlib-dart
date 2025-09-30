import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents outline of an image
@immutable
class Outline extends TdObject {
  const Outline({required this.paths});

  /// [paths] The list of closed vector paths
  final List<ClosedVectorPath> paths;

  static const String constructor = 'outline';

  static Outline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Outline(
      paths: List<ClosedVectorPath>.from(
        ((json['paths'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => ClosedVectorPath.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'paths': paths.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
