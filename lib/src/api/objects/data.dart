import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains some binary data
@immutable
class Data extends TdObject {
  const Data({required this.data});

  /// [data] Data
  final String data;

  static const String constructor = 'data';

  static Data? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Data(data: json['data'] as String);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
