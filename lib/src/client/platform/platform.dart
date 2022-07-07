abstract class Platform {
  void send({required Map<String, dynamic> function});

  Map<String, dynamic> execute({required Map<String, dynamic> function});

  Future<void> initialize();

  Stream<Map<String, dynamic>> get events;

  void destroy();
}
