import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the squared received number; for testing only. This is an offline
/// method. Can be called before authorization
/// Returns [TestInt]
class TestSquareInt extends TdFunction {
  TestSquareInt({required this.x});

  /// [x] Number to square
  final int x;

  static const String CONSTRUCTOR = 'testSquareInt';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'x': this.x, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
