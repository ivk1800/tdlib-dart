abstract class TdFunction {
  const TdFunction();

  static const CONSTRUCTOR = 'function';

  Map<String, dynamic> toJson();

  dynamic? getExtra() => null;

  String getConstructor() => CONSTRUCTOR;
}
