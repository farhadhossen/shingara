import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'shingara_method_channel.dart';

abstract class ShingaraPlatform extends PlatformInterface {
  /// Constructs a ShingaraPlatform.
  ShingaraPlatform() : super(token: _token);

  static final Object _token = Object();

  static ShingaraPlatform _instance = MethodChannelShingara();

  /// The default instance of [ShingaraPlatform] to use.
  ///
  /// Defaults to [MethodChannelShingara].
  static ShingaraPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ShingaraPlatform] when
  /// they register themselves.
  static set instance(ShingaraPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
