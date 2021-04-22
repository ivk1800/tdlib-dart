import '../tdapi.dart';

/// A new incoming query; for bots only
class UpdateNewCustomQuery extends Update {
  UpdateNewCustomQuery(
      {required this.id, required this.data, required this.timeout});

  /// [id] The query identifier
  final int id;

  /// [data] JSON-serialized query data
  final String data;

  /// [timeout] Query timeout
  final int timeout;

  static const String CONSTRUCTOR = 'updateNewCustomQuery';

  static UpdateNewCustomQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCustomQuery(
        id: int.tryParse(json['id']) ?? 0,
        data: json['data'],
        timeout: json['timeout']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'data': this.data,
        'timeout': this.timeout,
        '@type': CONSTRUCTOR
      };
}
