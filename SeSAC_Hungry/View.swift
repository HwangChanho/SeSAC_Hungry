//
//  View.swift
//  SeSAC_Hungry
//
//  Created by ChanhoHwang on 2021/10/05.
//

import UIKit

class FirstView: UIView {
    
    let containerView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 100))
        
        label.text = "첫번째 뷰컨트롤러"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .purple
        label.sizeToFit()
        
        return label
    }()
    
    let firstButton: UIButton = {
        let button = UIButton()
        button.setTitle("back", for: .normal)
        button.isUserInteractionEnabled = true
        // button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        
        return button
    }()
    
    let secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("next", for: .normal)
        button.isUserInteractionEnabled = true
        // button.backgroundColor = .black
        button.setTitleColor(.blue, for: .normal)
        
        return button
    }()
    
    func makeSubView() {
        addSubview(containerView)
        containerView.addSubview(firstButton)
        containerView.addSubview(secondButton)
        addSubview(label)
    }
    
    func makeConstraint() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            containerView.leftAnchor.constraint(equalTo: leftAnchor),
            containerView.rightAnchor.constraint(equalTo: rightAnchor)
        ])
        
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
            firstButton.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 15),
            firstButton.widthAnchor.constraint(equalToConstant: 50),
            firstButton.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
            secondButton.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -15),
            secondButton.widthAnchor.constraint(equalToConstant: 50),
            secondButton.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 20).isActive = true
        
        //self.navigationItem.titleView = containerView
        //self.navigationController?.navigationBar.barTintColor = .white
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeSubView()
        makeConstraint()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


