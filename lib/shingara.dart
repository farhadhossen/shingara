
import 'shingara_platform_interface.dart';
export 'src/function_widgets/dialogs/ask_dialog_1.dart';

class Shingara {
  Future<String?> getPlatformVersion() {
    return ShingaraPlatform.instance.getPlatformVersion();
  }
}
