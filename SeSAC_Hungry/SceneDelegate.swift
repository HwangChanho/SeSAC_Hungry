//
//  SceneDelegate.swift
//  SeSAC_Hungry
//
//  Created by ChanhoHwang on 2021/10/05.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow? // 맨 처음 뷰컨트롤러의 이벤트 관리 등 다양한 작업을 수행해준다.

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return } // 처음 보여줄 화면
        
        // 탭바
        let tab = UITabBarController() // 탭바 객체 생성
        
        tab.view.backgroundColor = .white // default = black
        self.window?.rootViewController = tab
        
        let view01 = ViewController()
        let view02 = ViewController2()
        let view03 = ViewController3() // 객체생성
//        let view04 = ViewController3()
//        let view05 = ViewController3()
//        let view06 = ViewController3()
//        let view07 = ViewController3()
//        let view08 = ViewController3()
//        let view09 = ViewController3()
//        let view10 = ViewController3() // more 가 생기면서 메뉴가 자동으로 생성됨
        
        tab.setViewControllers([view01, view02, view03], animated: false)
        
        view01.tabBarItem = UITabBarItem(title: "test1", image: UIImage(named: "mono_baedal11")!.withRenderingMode(.alwaysOriginal), selectedImage: nil)
        view02.tabBarItem = UITabBarItem(title: "test2", image: UIImage(named: "mono_baedal12")!.withRenderingMode(.alwaysOriginal), selectedImage: nil)
        view03.tabBarItem = UITabBarItem(title: "test3", image: UIImage(named: "mono_baedal13")!.withRenderingMode(.alwaysOriginal), selectedImage: nil)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}

