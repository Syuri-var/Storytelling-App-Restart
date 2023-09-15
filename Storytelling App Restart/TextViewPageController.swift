import UIKit

class TextViewPageController: UIViewController {

    @IBOutlet weak var textView: UITextView! // IBOutletを使用してUITextViewを接続

    override func viewDidLoad() {
        super.viewDidLoad()

        // UITextViewのScrollViewを取得
        if let scrollView = textView.subviews.first as? UIScrollView {
            // Paging Enabledを設定
            scrollView.isPagingEnabled = true
        }
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        // Storyboard ID を指定して新しいビューコントローラをインスタンス化
       // if let newViewController = storyboard?.instantiateViewController(withIdentifier: "NewViewControllerID") {
            // 新しいビューコントローラを表示
          //  self.present(newViewController, animated: true, completion: nil)
        }
    }

    
    
    
    

