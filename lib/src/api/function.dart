abstract class TdFunction {
  const TdFunction();

  static const CONSTRUCTOR = 'function';

  Map<String, dynamic> toJson();

  String getConstructor() => CONSTRUCTOR;
}
