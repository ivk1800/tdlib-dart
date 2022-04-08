import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the call identifier
@immutable
class CallId extends TdObject {
  const CallId({
    required this.id,
  });

  /// [id] Call identifier
  final int id;

  static const String constructor = 'callId';

  static CallId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallId(
      id: json['id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
