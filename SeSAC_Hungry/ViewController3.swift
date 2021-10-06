//
//  ViewController3.swift
//  SeSAC_Hungry
//
//  Created by ChanhoHwang on 2021/10/05.
//

import UIKit

class ViewController3: UIViewController {
    
    let firstView: FirstView = {
        let firstView = FirstView()
        return firstView
    }()
    
    @objc func firstButtonPressed(_: UIButton) {
        print("popToViewController -> viewControllers[0]") // 네비게이션의 인덱스로 접근
        // viewControllers[0] 가 있는지 옵셔널 바인딩으로 확인
        guard let secondViewController = self.navigationController?.viewControllers[0] else { return }
        navigationController?.popToViewController(secondViewController, animated: true) // 해당 컨트롤러가 존재 하면 화면 이동 pop -> LIFO 스택으로 동작
    }
    // 해당 컨트롤러가 존재 하면 화면 이동 pop -> LIFO 스택으로 동작
    @objc func secondButtonPressed(_: UIButton) {
        print("popToRootViewController -> rootViewController")
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.label.text = "세번쨰 뷰컨트롤러"
        
        title = "ThirdViewController"
        firstView.firstButton.addTarget(self, action: #selector(firstButtonPressed(_:)), for: .touchUpInside)
        firstView.secondButton.addTarget(self, action: #selector(secondButtonPressed(_:)), for: .touchUpInside)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) { // 터치시 탭바 숨기기
        let tabBar = self.tabBarController?.tabBar // rootViewController 를 통하여 탭바 접근 필요
        
        UIView.animate(withDuration: TimeInterval(0.3)) { // alpha가 0 또는 1에서 반대로 갈떄까지 애니메이션 수행 과정을 0.3초안에 완료
            tabBar?.alpha = tabBar?.alpha == 1 ? 0 : 1 // alpha = 투명도
            self.firstView.label.textColor = self.firstView.label.textColor == .green ? .red : . green
        }
    }
    
    override func loadView() { // 미리 정의한 뷰를 설정 (view class)ㅇ
        super.loadView()
        view = firstView
    }
}
