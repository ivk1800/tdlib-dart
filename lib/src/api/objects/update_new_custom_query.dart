import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new incoming query; for bots only
@immutable
class UpdateNewCustomQuery extends Update {
  const UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
  });

  /// [id] The query identifier
  final int id;

  /// [data] JSON-serialized query data
  final String data;

  /// [timeout] Query timeout
  final int timeout;

  static const String constructor = 'updateNewCustomQuery';

  static UpdateNewCustomQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCustomQuery(
      id: int.tryParse(json['id']) ?? 0,
      data: json['data'] as String,
      timeout: json['timeout'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'data': data,
        'timeout': timeout,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
