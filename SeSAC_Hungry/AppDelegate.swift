//
//  AppDelegate.swift
//  SeSAC_Hungry
//
//  Created by ChanhoHwang on 2021/10/05.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
    
    // willFinishLaunchingWithOptions -> didFinishLaunchingWithOptions 앱 실행시 초기 셋팅이 이뤄지는 곳
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds) // 프레임을 스크림에 맞춘다
        let firstViewController = ViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController) // 루트뷰 설정
        navigationController.navigationItem.title = "네비게이션 타이틀"
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible() // 현재 레벨의 window 창을 보여준다.
        
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

