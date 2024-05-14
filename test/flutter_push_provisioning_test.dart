import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_push_provisioning/flutter_push_provisioning.dart';
import 'package:flutter_push_provisioning/flutter_push_provisioning_platform_interface.dart';
import 'package:flutter_push_provisioning/flutter_push_provisioning_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPushProvisioningPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPushProvisioningPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPushProvisioningPlatform initialPlatform = FlutterPushProvisioningPlatform.instance;

  test('$MethodChannelFlutterPushProvisioning is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPushProvisioning>());
  });

  test('getPlatformVersion', () async {
    FlutterPushProvisioning flutterPushProvisioningPlugin = FlutterPushProvisioning();
    MockFlutterPushProvisioningPlatform fakePlatform = MockFlutterPushProvisioningPlatform();
    FlutterPushProvisioningPlatform.instance = fakePlatform;

    expect(await flutterPushProvisioningPlugin.getPlatformVersion(), '42');
  });
}
