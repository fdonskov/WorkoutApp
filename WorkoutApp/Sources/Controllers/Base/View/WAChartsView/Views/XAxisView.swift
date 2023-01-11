//
//  XAxisView.swift
//  WorkoutApp
//
//  Created by Федор Донсков on 11.01.2023.
//

import UIKit

final class XAxisView: WABaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [WAChartsView.Data]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        data.forEach {
            let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(with: 9)
            label.textColor = Resources.Colors.inActive
            label.textAlignment = .center
            label.text = $0.title.uppercased()
            
            stackView.addArrangedSubview(label)
        }
    }
}

extension XAxisView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
    }
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
