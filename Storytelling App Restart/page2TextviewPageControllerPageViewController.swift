import UIKit
import AVFoundation

class page2PageViewController: UIViewController {

    var player: AVPlayer!
    var audioPlayer1: AVAudioPlayer? // 1つ目の音楽
    var audioPlayer2: AVAudioPlayer? // 2つ目の音楽
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 動画ファイル名（Assets内のファイル名）を指定
        let videoFileName = "本文背景動画" // 例: "sample_video.mp4"
        
        // 動画ファイルのURLを取得
        if let videoURL = Bundle.main.url(forResource: videoFileName, withExtension: "mp4") {
            // AVPlayerを初期化し、AVPlayerLayerを作成
            player = AVPlayer(url: videoURL)
            let playerLayer = AVPlayerLayer(player: player)

            // AVPlayerLayerのフレームを設定
            playerLayer.frame = view.frame

            // UIViewにAVPlayerLayerを追加
//            view.layer.addSublayer(playerLayer)
            view.layer.insertSublayer(playerLayer, at: 0)

            // 動画再生を開始
            player.play()
        } else {
            print("動画ファイルが見つかりません")
        }
        
        // 音楽ファイル名（mp3ファイルなど）を指定
        let musicFileName = "speech02" // 例: "music.mp3"
        let musicFileName2 = "銀河鉄道の夜Opening" // もう一つの音楽ファイル
        
        // 音楽ファイルのURLを取得
        if let musicURL = Bundle.main.url(forResource: musicFileName, withExtension: "mp3") {
            do {
                // AVAudioPlayerのインスタンスを作成し、音楽を再生
                audioPlayer1 = try AVAudioPlayer(contentsOf: musicURL)
                audioPlayer1?.play()
            } catch {
                print("音楽ファイルの再生エラー: \(error.localizedDescription)")
            }
        } else {
            print("音楽ファイルが見つかりません")
        }
        

        
    }
    @IBAction func stopAudioButtonPressed(_ sender: UIButton) {
        // 1つ目の音楽を停止
        audioPlayer1?.stop()
        
        // 2つ目の音楽を停止
        audioPlayer2?.stop()
    }
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        let playerLayer = AVPlayerLayer(player: player)
//
//        // AVPlayerLayerのフレームを設定
//        playerLayer.frame = view.bounds
//
//        // UIViewにAVPlayerLayerを追加
////            view.layer.addSublayer(playerLayer)
//        view.layer.insertSublayer(playerLayer, at: 0)
//
//        // 動画再生を開始
//        player.play()
//    }

   // override func viewWillDisappear(_ animated: Bool) {
      //  super.viewWillDisappear(animated)

        // 画面が非表示になる直前に音楽再生を停止
       // audioPlayer?.stop()
}
    

