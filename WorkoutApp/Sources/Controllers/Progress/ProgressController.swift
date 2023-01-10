//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Федор Донсков on 28.11.2022.
//

import UIKit

class ProgressController: WABaseController {
    
    private let dailyPerformanceView = DailyPerformanceView(with: Resources.Strings.Progress.dailyPerfomance,
                                                            buttonTitle: Resources.Strings.Progress.last7Days)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension ProgressController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [.init(value: "1", heightMultiplier: 0.2, title: "Mon"),
                                              .init(value: "2", heightMultiplier: 0.4, title: "Teu"),
                                              .init(value: "3", heightMultiplier: 0.6, title: "Wen"),
                                              .init(value: "4", heightMultiplier: 0.8, title: "Thu"),
                                              .init(value: "5", heightMultiplier: 1, title: "Fri"),
                                              .init(value: "3", heightMultiplier: 0.6, title: "Sat"),
                                              .init(value: "2", heightMultiplier: 0.4, title: "Sun")])
    }
}
