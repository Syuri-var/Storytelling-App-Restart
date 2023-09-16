import UIKit
import AVFoundation

class TextViewPageController: UIViewController {

    var player: AVPlayer!
    var audioPlayer1: AVAudioPlayer? // 1つ目の音楽
    var audioPlayer2: AVAudioPlayer? // 2つ目の音楽
//    var textView: UITextView!
    var timer:Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // UITextViewを生成して設定
//      textView = UITextView(frame: view.bounds)
//        textView.isPagingEnabled = true
//        view.addSubview(textView)
        
        // 動画ファイル名（Assets内のファイル名）を指定
       let videoFileName = "本文背景動画" // 例: "sample_video.mp4"
        
        // 動画ファイルのURLを取得
       if let videoURL = Bundle.main.url(forResource: videoFileName, withExtension: "mp4") {
           // AVPlayerを初期化し、AVPlayerLayerを作成
           player = AVPlayer(url: videoURL)
           let playerLayer = AVPlayerLayer(player: player)
            
            // AVPlayerLayerのフレームを設定
            playerLayer.frame = view.frame
          
           
           timer = Timer.scheduledTimer(timeInterval: 60.0,                            //
                                                                  target: self,                   //
                                                                  selector: "changeView",         //
                                                                  userInfo: nil,                  //
                                                                  repeats: false)
            // UIViewにAVPlayerLayerを追加
            view.layer.insertSublayer(playerLayer, at: 0)
//            view.layer.addSublayer(playerLayer)
            
            // 動画再生を開始
            player.play()
            
            // 動画再生が終了したことを監視
         //   NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)
        } else {
           print("動画ファイルが見つかりません")
        }
        
        // 音楽ファイル名（mp3ファイルなど）を指定
        let musicFileName1 = "午後の授業１" // 例: "music.mp3"
        let musicFileName2 = "銀河鉄道の夜Opening" // もう一つの音楽ファイル
        
        // 1つ目の音楽ファイルのURLを取得
        if let musicURL1 = Bundle.main.url(forResource: musicFileName1, withExtension: "mp3") {
            do {
                // 1つ目のAVAudioPlayerのインスタンスを作成し、音楽を再生
                audioPlayer1 = try AVAudioPlayer(contentsOf: musicURL1)
                audioPlayer1?.play()
            } catch {
                print("1つ目の音楽ファイルの再生エラー: \(error.localizedDescription)")
            }
        } else {
            print("1つ目の音楽ファイルが見つかりません")
        }
        
        // 2つ目の音楽ファイルのURLを取得
      //  if let musicURL2 = Bundle.main.url(forResource: musicFileName2, withExtension: "mp3") {
            //    do {
                // 2つ目のAVAudioPlayerのインスタンスを作成し、音楽を再生
               // audioPlayer2 = try AVAudioPlayer(contentsOf: musicURL2)
               // audioPlayer2?.play()
         //   } catch {
              //  print("2つ目の音楽ファイルの再生エラー: \(error.localizedDescription)")
            }
      //  } else {
           // print("2つ目の音楽ファイルが見つかりません")
        }
    

   // func playerDidFinishPlaying() {
        // 動画再生が終了したら再生をリセットして再生
       // player.seek(to: .zero)
      //  player.play()
   // }

