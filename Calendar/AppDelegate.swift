import UIKit
import CalendarKit
import EventKit
import EventKitUI
import SwiftyAttributes

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        let calendarViewController = CalendarViewController()
        let navigationController = UINavigationController(rootViewController: calendarViewController)
        
        
        let mainTabBarController = MainTabBarController()
        let mainNavigationController = MainNavigationController()
        let secondaryViewController = SecondaryViewController()

        mainNavigationController.title = "NavVC"
        secondaryViewController.title = "SecondaryVC"

        let mainViewController = MainViewController()
        
        mainNavigationController.viewControllers = [mainViewController]

        mainTabBarController.viewControllers = [mainNavigationController, calendarViewController, secondaryViewController]

        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
//        window?.rootViewController = mainTabBarController

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
