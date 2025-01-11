//
//  OnBoradingViewController.swift
//  CodeFactory
//
//  Created by Anuj on 10/01/25.
//

import UIKit

class OnBoradingViewController: UIViewController {
    
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var vwContainer: UIView!
    
    var currentViewController : UIViewController?
    let CURRENT_PAGE_IMG = UIImage(named: "icon_curent_page")
    let OTHER_PAGE_IMG = UIImage(named: "ic_other_page")
    var CURRENT_PAGE = 0
    
    lazy var  pageControlFirstView : PageControlFirstViewController = {
        var vc = PageControlFirstViewController.init(nibName: "PageControlFirstViewController", bundle: nil)
        self.addViewControllerAsChildViewController(vc)
        return vc
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.loadInitialSettings()
    }
    
    
    //MARK: - loadInitialSettings
    func loadInitialSettings(){
        self.view.backgroundColor = UICOLOR_APP_BACKGROUND_COLOR
        
        self.btnNext.backgroundColor = UICOLOR_BUTTON_COLOR
        self.setButtonTitle(title: NEXT)
        self.btnNext.setTitleColor(UICOLOR_WHITE, for: .normal)
        self.btnNext.setTitleColor(UICOLOR_WHITE, for: .highlighted)
        self.btnNext.layer.cornerRadius = 20.0
        self.btnNext.titleLabel?.font = OpanSansBold_Size16
        
        self.pageControl.currentPage = 0
        self.pageControl.numberOfPages = 3
        self.pageControl.backgroundColor = .clear
        self.pageControl.setIndicatorImage(CURRENT_PAGE_IMG, forPage: 0)
        self.pageControl.setIndicatorImage(OTHER_PAGE_IMG, forPage: 1)
        self.pageControl.setIndicatorImage(OTHER_PAGE_IMG, forPage: 2)
        self.pageControl.pageIndicatorTintColor = UICOLOR_LIGHT_GRAY_COLOR
        self.pageControl.currentPageIndicatorTintColor = UICOLOR_BLUE_COLOR
        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.addTarget(self, action: #selector(pageControlDidChange(_:)), for: .valueChanged)
        
        self.showAppropriateChildViewController(isComeFrom: CURRENT_PAGE)
    }
    
    //MARK: - pageControlDidChange
    @objc func pageControlDidChange(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        // Reset all indicators to the default image
        for index in 0..<self.pageControl.numberOfPages {
            self.pageControl.setIndicatorImage(OTHER_PAGE_IMG, forPage: index)
        }
        self.setButtonTitle(title: NEXT)
        if currentPage == 2 {
            self.setButtonTitle(title: LET_START)
        }
        // Set the current page indicator to the highlighted image
        self.pageControl.setIndicatorImage(CURRENT_PAGE_IMG, forPage: currentPage)
        CURRENT_PAGE = currentPage
        self.showAppropriateChildViewController(isComeFrom: CURRENT_PAGE)
    }
    
    //MARK: - setButtonTitle
    func setButtonTitle(title: String){
        self.btnNext.setTitle(title, for: .normal)
        self.btnNext.setTitle(title, for: .highlighted)
    }
    
    
    // MARK: - showAppropriateChildViewController
    func showAppropriateChildViewController(isComeFrom: Int) {
        // This method shows appropriate child view
        // First hide previous view
        if (currentViewController != nil) {
            currentViewController?.view.isHidden = true
        }
        // Get current view and show it
        self.pageControlFirstView.isComeFrom = isComeFrom
        self.pageControlFirstView.tableReload()
        currentViewController = self.pageControlFirstView
        currentViewController?.view.isHidden = false
    }
    
    // MARK: - addViewControllerAsChildViewController
    func addViewControllerAsChildViewController(_ childViewController: UIViewController) {
        childViewController.view.backgroundColor = UIColor.clear
        addChild(childViewController)
        vwContainer.addSubview(childViewController.view)
        vwContainer.bringSubviewToFront(childViewController.view)
        childViewController.view.frame = vwContainer.bounds
        childViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        childViewController.didMove(toParent: self)
    }
    
    
    //MARK: - clickNextBtn
    @IBAction func clickNextBtn(_ sender: Any) {
        CURRENT_PAGE = CURRENT_PAGE + 1
        
        if(CURRENT_PAGE >= 3){
            ///#REDIRECT TO LOGIN SCEEN
            return
        }else if CURRENT_PAGE == 2 {
            self.setButtonTitle(title: LET_START)
        }
        for index in 0..<self.pageControl.numberOfPages {
            self.pageControl.setIndicatorImage(OTHER_PAGE_IMG, forPage: index)
        }
        self.pageControl.setIndicatorImage(CURRENT_PAGE_IMG, forPage: CURRENT_PAGE)
        self.pageControl.currentPage = CURRENT_PAGE
        
        self.showAppropriateChildViewController(isComeFrom: CURRENT_PAGE)
    }
}
