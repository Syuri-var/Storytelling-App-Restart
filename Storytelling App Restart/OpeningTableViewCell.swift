import UIKit
import AVFoundation

class OpeningTableViewCellController: UIViewController {

    var player: AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 動画ファイル名（Assets内のファイル名）を指定
        let videoFileName = "sample_video" // 例: "sample_video.mp4"

        // 動画ファイルのURLを取得
        if let videoURL = Bundle.main.url(forResource: videoFileName, withExtension: "mp4") {
            // AVPlayerを初期化し、AVPlayerLayerを作成
            player = AVPlayer(url: videoURL)
            let playerLayer = AVPlayerLayer(player: player)

            // AVPlayerLayerのフレームを設定
            playerLayer.frame = view.bounds

            // UIViewにAVPlayerLayerを追加
            view.layer.addSublayer(playerLayer)

            // 動画再生を開始
            player.play()
        } else {
            print("動画ファイルが見つかりません")
        }
    }
}
