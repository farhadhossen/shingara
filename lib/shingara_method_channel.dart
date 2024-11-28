import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'shingara_platform_interface.dart';

/// An implementation of [ShingaraPlatform] that uses method channels.
class MethodChannelShingara extends ShingaraPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('shingara');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
