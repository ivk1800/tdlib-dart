import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The connection state has changed. This update must be used only to show a
/// human-readable description of the connection state
@immutable
class UpdateConnectionState extends Update {
  const UpdateConnectionState({
    required this.state,
  });

  /// [state] The new connection state
  final ConnectionState state;

  static const String constructor = 'updateConnectionState';

  static UpdateConnectionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateConnectionState(
      state: ConnectionState.fromJson(json['state'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'state': state.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
