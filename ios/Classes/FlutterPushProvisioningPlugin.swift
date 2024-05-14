import Flutter
import UIKit

public class FlutterPushProvisioningPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_push_provisioning", binaryMessenger: registrar.messenger())
    let instance = FlutterPushProvisioningPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
