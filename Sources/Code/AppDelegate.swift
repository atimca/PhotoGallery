//
// Copyright © 2019 Smirnov Maxim. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: makeAlbumsViewController)
        window?.makeKeyAndVisible()
        return true
    }

    private var makeAlbumsViewController: UIViewController {
        return AlbumsViewController(downloadService: AlbumsService(networkClient: NetworkClient()))
    }
}
