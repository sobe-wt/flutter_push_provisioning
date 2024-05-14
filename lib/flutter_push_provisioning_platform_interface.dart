import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_push_provisioning_method_channel.dart';

abstract class FlutterPushProvisioningPlatform extends PlatformInterface {
  /// Constructs a FlutterPushProvisioningPlatform.
  FlutterPushProvisioningPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPushProvisioningPlatform _instance = MethodChannelFlutterPushProvisioning();

  /// The default instance of [FlutterPushProvisioningPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPushProvisioning].
  static FlutterPushProvisioningPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPushProvisioningPlatform] when
  /// they register themselves.
  static set instance(FlutterPushProvisioningPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
