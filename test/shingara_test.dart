import 'package:flutter_test/flutter_test.dart';
import 'package:shingara/shingara.dart';
import 'package:shingara/shingara_platform_interface.dart';
import 'package:shingara/shingara_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockShingaraPlatform
    with MockPlatformInterfaceMixin
    implements ShingaraPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ShingaraPlatform initialPlatform = ShingaraPlatform.instance;

  test('$MethodChannelShingara is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelShingara>());
  });

  test('getPlatformVersion', () async {
    Shingara shingaraPlugin = Shingara();
    MockShingaraPlatform fakePlatform = MockShingaraPlatform();
    ShingaraPlatform.instance = fakePlatform;

    expect(await shingaraPlugin.getPlatformVersion(), '42');
  });
}
