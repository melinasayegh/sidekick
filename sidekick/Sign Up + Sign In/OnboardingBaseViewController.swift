//
//  OnboardingBaseViewController.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/19/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class OnboardingBaseViewController: UIViewController {
    

    @IBOutlet var contentView: UIView!
    
    let dataSource = ["Question One", "Question Two", "Question Three", "Question Four", "Question Five"]
    var currentQuestionPageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePageViewController()
    }
    
    func configurePageViewController() {
        
        guard let pageViewController = storyboard?.instantiateViewController(withIdentifier: "OnboardingPageVC") as? OnboardingPageViewController else {
            return
        }
        
        pageViewController.delegate = self
        pageViewController.dataSource = self
        
        addChild(pageViewController)
        pageViewController.didMove(toParent: self)
        
        // constraints
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(pageViewController.view)
        
        let views: [String: Any] = ["pageView": pageViewController.view!]
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[pageView]-0-|",
                                                                 options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                                                                 metrics: nil,
                                                                 views: views))
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[pageView]-0-|",
                                                                 options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                                                                 metrics: nil,
                                                                 views: views))
        
        guard let startingViewController = detailViewControllerAt(pageIndex: currentQuestionPageIndex) else {
            return
        }
        
        pageViewController.setViewControllers([startingViewController], direction: .forward, animated: true)
    }
    
    func detailViewControllerAt(pageIndex: Int) -> OnboardingQuestionViewController? {
        
        if pageIndex >= dataSource.count || dataSource.count == 0 {
            return nil
        }
        
        guard let questionViewController = storyboard?.instantiateViewController(withIdentifier: "OnboardingQuestionVC") as? OnboardingQuestionViewController else {
            return nil
        }
        
        questionViewController.index = pageIndex
        questionViewController.questionLabel.text = dataSource[pageIndex]
        
        return questionViewController
    }
}

extension OnboardingBaseViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return currentQuestionPageIndex
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return dataSource.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let dataViewController = viewController as? OnboardingQuestionViewController
        
        guard var currentIndex = dataViewController?.index else {
            return nil
        }
        
        currentQuestionPageIndex = currentIndex
        
        if currentIndex == 0 {
            return nil
        }
        
        currentIndex -= 1
        
        return detailViewControllerAt(pageIndex: currentIndex)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let dataViewController = viewController as? OnboardingQuestionViewController
        
        guard var currentIndex = dataViewController?.index else {
            return nil
        }
        
        if currentIndex == 0 {
            return nil
        }
        
        currentIndex += 1
        
        currentQuestionPageIndex = currentIndex
        
        return detailViewControllerAt(pageIndex: currentIndex)
    }
}
