import UIKit
import Flutter
import flutter_downloader
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // 不要删除以下三行
    GeneratedPluginRegistrant.register(with: self)
    UIApplication.shared.clearLaunchScreenCache();
    Thread.sleep(forTimeInterval: 0.0) // 启动页停留2秒
    FlutterDownloaderPlugin.setPluginRegistrantCallback(registerPlugins)
    super.application(application, didFinishLaunchingWithOptions: launchOptions);
    return true
  }
}

private func registerPlugins(registry: FlutterPluginRegistry) {
    if (!registry.hasPlugin("FlutterDownloaderPlugin")) {
        FlutterDownloaderPlugin.register(with: registry.registrar(forPlugin: "FlutterDownloaderPlugin") as! FlutterPluginRegistrar)
    }
}



