
import 'flutter_push_provisioning_platform_interface.dart';

class FlutterPushProvisioning {
  Future<String?> getPlatformVersion() {
    return FlutterPushProvisioningPlatform.instance.getPlatformVersion();
  }
}
