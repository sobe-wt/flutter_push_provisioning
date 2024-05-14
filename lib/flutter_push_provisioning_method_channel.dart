import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_push_provisioning_platform_interface.dart';

/// An implementation of [FlutterPushProvisioningPlatform] that uses method channels.
class MethodChannelFlutterPushProvisioning extends FlutterPushProvisioningPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_push_provisioning');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
