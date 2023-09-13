//
//  TableViewController.swift
//  Storytelling App Restart
//
//  Created by Apple on 2023/09/12.
//

import UIKit
import AVFoundation

class VideoTableViewController: UIViewController {

    var player: AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 動画ファイル名（Assets内のファイル名）を指定
        let videoFileName = "銀河鉄道の夜.mp4" // 例: "sample_video.mp4"

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

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


