import '../tdapi.dart';

/// Loads an asynchronous or a zoomed in statistical graph
/// Returns [StatisticalGraph]
class GetStatisticalGraph extends TdFunction {
  GetStatisticalGraph(
      {required this.chatId, required this.token, required this.x});

  /// [chatId] Chat identifier
  final int chatId;

  /// [token] The token for graph loading
  final String token;

  /// [x] X-value for zoomed in graph or 0 otherwise
  final int x;

  static const String CONSTRUCTOR = 'getStatisticalGraph';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'token': this.token,
        'x': this.x,
        '@type': CONSTRUCTOR
      };
}
