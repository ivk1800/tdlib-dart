import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns reactions, which can be chosen for a story
/// Returns [AvailableReactions]
@immutable
class GetStoryAvailableReactions extends TdFunction {
  const GetStoryAvailableReactions({
    required this.rowSize,
  });

  /// [rowSize] Number of reaction per row, 5-25
  final int rowSize;

  static const String constructor = 'getStoryAvailableReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'row_size': rowSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
