import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a business connection by its identifier; for
/// bots only
/// Returns [BusinessConnection]
@immutable
class GetBusinessConnection extends TdFunction {
  const GetBusinessConnection({
    required this.connectionId,
  });

  /// [connectionId] Identifier of the business connection to return
  final String connectionId;

  static const String constructor = 'getBusinessConnection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'connection_id': connectionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
