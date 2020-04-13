import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self);
    GMSServices.provideAPIKey("AIzaSyBE4VhR_cD8madx8TCugaGaN439LcTc3nI");
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
