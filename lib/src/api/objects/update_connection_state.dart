import '../tdapi.dart';

/// The connection state has changed. This update must be used only to show a
/// human-readable description of the connection state
class UpdateConnectionState extends Update {
  UpdateConnectionState({required this.state});

  /// [state] The new connection state
  final ConnectionState state;

  static const String CONSTRUCTOR = 'updateConnectionState';

  static UpdateConnectionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateConnectionState(
        state: ConnectionState.fromJson(json['state'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'state': this.state.toJson(), '@type': CONSTRUCTOR};
}
