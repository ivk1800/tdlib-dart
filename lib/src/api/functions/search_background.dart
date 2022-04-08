import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for a background by its name
/// Returns [Background]
@immutable
class SearchBackground extends TdFunction {
  const SearchBackground({
    required this.name,
  });

  /// [name] The name of the background
  final String name;

  static const String constructor = 'searchBackground';

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
