//
//  ProjectViewController.swift
//  mandara
//
//  Created by kazuki on 2021/02/28.
//

import UIKit
import RealmSwift   // ←追加

class ProjectViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    // Realmインスタンスを取得する
    let realm = try! Realm()  // ←追加
    // DB内のタスクが格納されるリスト。
    // 日付の近い順でソート：昇順
    // 以降内容をアップデートするとリスト内は自動的に更新される。
    var projectArray = try! Realm().objects(Mandara.self).sorted(byKeyPath: "date", ascending: true)  // ←追加
    var templateArray = try! Realm().objects(Temp.self).sorted(byKeyPath: "date", ascending: true)  // ←追加
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        print(projectArray)
        print(templateArray)
    }
    // データの数（＝セルの数）を返すメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projectArray.count  // ←修正する
    }

    // 各セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 再利用可能な cell を得る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // Cellに値を設定する.  --- ここから ---
        let project = projectArray[indexPath.row]
        cell.textLabel?.text = "\(project.category) - \(project.projectName)"
        
        //日付を表示する。
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"

        let dateString:String = formatter.string(from: project.completiondate)
        let dateString2:String = formatter.string(from: project.date)
        cell.detailTextLabel?.text = "作成日:\(dateString2)  完了予定日:\(dateString)"
        
        return cell
    }

    // 各セルを選択した時に実行されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "cellSegue",sender: nil) // ←追加する
    }

    // セルが削除が可能なことを伝えるメソッド
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)-> UITableViewCell.EditingStyle {
        return .delete
    }

    // Delete ボタンが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // --- ここから ---
         if editingStyle == .delete {
             // データベースから削除する
             try! realm.write {
                 self.realm.delete(self.projectArray[indexPath.row])
                 tableView.deleteRows(at: [indexPath], with: .fade)
             }
    }
}
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section:Int) -> String? {
        
//       let project = projectArray[section]
//       print(project.category)
//       return "header for section: \(project.category)"
        
//    }
//    func numberOfSections(in tableView: UITableView) -> Int {
           
        //projectArrayの要素の種類数をカウントしたい。
//       return projectArray.count
//    }
    
    // segue で画面遷移する時に呼ばれる
       override func prepare(for segue: UIStoryboardSegue, sender: Any?){

           if segue.identifier == "cellSegue" {
            
            let mandaraViewController = segue.destination as! MandaraViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            mandaraViewController.mandara = projectArray[indexPath!.row]
            
            
           } else {
            let projectInputViewController:projectInputViewController = segue.destination as! projectInputViewController
               let mandara = Mandara()

               let allMandara = realm.objects(Mandara.self)
               if allMandara.count != 0 {
                   mandara.id = allMandara.max(ofProperty: "id")! + 1
               }

            projectInputViewController.mandara = mandara
           }
       }
    // 入力画面から戻ってきた時に TableView を更新させる
     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         tableView.reloadData()
     }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
