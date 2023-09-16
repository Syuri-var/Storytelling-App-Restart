//
//  PageViewController.swift
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    let idList = ["page1", "page2"]//, "page3"]
    
    // 最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 最初のビューコントローラーを取得する。
        let controller = storyboard!.instantiateViewController(withIdentifier: idList.first!)
        
        // ビューコントローラーを表示する。
        self.setViewControllers([controller], direction: .forward, animated: true, completion: nil)
        
        // データ提供元に自分を設定する。
        self.dataSource = self

    }
    
    // 右ドラッグ時の呼び出しメソッド
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        // 現在のビューコントローラーのインデックス番号を取得する。
        let index = idList.firstIndex(of: viewController.restorationIdentifier!)!
        print(viewController.restorationIdentifier)
        print(index)
        if (index > 0) {
            // 前ページのビューコントローラーを返す。
            return storyboard!.instantiateViewController(withIdentifier: idList[index - 1])
        }
        return nil
    }
    
    // 左ドラッグ時の呼び出しメソッド
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        // 現在のビューコントローラーのインデックス番号を取得する。
        let index = idList.firstIndex(of: viewController.restorationIdentifier!)!
        print(viewController.restorationIdentifier)
        print(index)

        if (index < idList.count - 1) {
            // 次ペー１ジのビューコントローラーを返す。
            return storyboard!.instantiateViewController(withIdentifier: idList[index + 1])
        }
        return nil
    }
        
 
//        // 現在のビューコントローラーのインデックス番号を取得する。
//        let index = idList.firstIndex(of: viewController.restorationIdentifier!)!
//        if (index < idList.count - 1) {
//            // 次ページのビューコントローラーを返す。
//            return storyboard!.instantiateViewController(withIdentifier: idList[index + 1])
//        }
//        return nil
//    }
}
