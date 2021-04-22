abstract class TdObject {
  static const CONSTRUCTOR = 'object';

  const TdObject();

  TdObject.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();

  String getConstructor() => CONSTRUCTOR;
}
