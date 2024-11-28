
import 'shingara_platform_interface.dart';

class Shingara {
  Future<String?> getPlatformVersion() {
    return ShingaraPlatform.instance.getPlatformVersion();
  }
}
