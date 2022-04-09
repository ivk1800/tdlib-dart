import 'client_impl.dart';

import '../../td_api.dart';
import 'platform/web/web_platform.dart' if (dart.library.ffi) 'platform/io/io_platform.dart';

abstract class Client {
  factory Client.create() => ClientImpl(platform: PlatformImpl());

  Stream<TdObject> get updates;

  Future<void> initialize();

  Future<T> send<T extends TdObject>(TdFunction function);

  T execute<T extends TdObject>(TdFunction function);

  void destroy();
}
