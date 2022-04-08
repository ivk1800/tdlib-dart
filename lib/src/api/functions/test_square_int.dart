import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the squared received number; for testing only. This is an offline
/// method. Can be called before authorization
/// Returns [TestInt]
@immutable
class TestSquareInt extends TdFunction {
  const TestSquareInt({
    required this.x,
  });

  /// [x] Number to square
  final int x;

  static const String constructor = 'testSquareInt';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
