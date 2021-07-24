//
//  MandaraViewController.swift
//  mandara
//
//  Created by kazuki on 2021/03/06.
//

import UIKit
import RealmSwift

class MandaraViewController: UIViewController {
    let realm = try! Realm()    // 追加する
    var mandara: Mandara!   // 追加する
    
    //インスタンス
    @IBOutlet weak var trashbutton: UIBarButtonItem!
    @IBOutlet weak var stackall: UIStackView!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn23: UIButton!
    @IBOutlet weak var btn31: UIButton!
    @IBOutlet weak var btn32: UIButton!
    @IBOutlet weak var btn33: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    @IBOutlet weak var btn24: UIButton!
    @IBOutlet weak var btn25: UIButton!
    @IBOutlet weak var btn26: UIButton!
    @IBOutlet weak var btn34: UIButton!
    @IBOutlet weak var btn35: UIButton!
    @IBOutlet weak var btn36: UIButton!
    @IBOutlet weak var btn17: UIButton!
    @IBOutlet weak var btn18: UIButton!
    @IBOutlet weak var btn19: UIButton!
    @IBOutlet weak var btn27: UIButton!
    @IBOutlet weak var btn28: UIButton!
    @IBOutlet weak var btn29: UIButton!
    @IBOutlet weak var btn37: UIButton!
    @IBOutlet weak var btn38: UIButton!
    @IBOutlet weak var btn39: UIButton!
    @IBOutlet weak var btn41: UIButton!
    @IBOutlet weak var btn42: UIButton!
    @IBOutlet weak var btn43: UIButton!
    @IBOutlet weak var btn51: UIButton!
    @IBOutlet weak var btn52: UIButton!
    @IBOutlet weak var btn53: UIButton!
    @IBOutlet weak var btn61: UIButton!
    @IBOutlet weak var btn62: UIButton!
    @IBOutlet weak var btn63: UIButton!
    @IBOutlet weak var btn44: UIButton!
    @IBOutlet weak var btn45: UIButton!
    @IBOutlet weak var btn46: UIButton!
    @IBOutlet weak var btn54: UIButton!
    @IBOutlet weak var btn55: UIButton!
    @IBOutlet weak var btn56: UIButton!
    @IBOutlet weak var btn64: UIButton!
    @IBOutlet weak var btn65: UIButton!
    @IBOutlet weak var btn66: UIButton!
    @IBOutlet weak var btn47: UIButton!
    @IBOutlet weak var btn48: UIButton!
    @IBOutlet weak var btn49: UIButton!
    @IBOutlet weak var btn57: UIButton!
    @IBOutlet weak var btn58: UIButton!
    @IBOutlet weak var btn59: UIButton!
    @IBOutlet weak var btn67: UIButton!
    @IBOutlet weak var btn68: UIButton!
    @IBOutlet weak var btn69: UIButton!
    @IBOutlet weak var btn71: UIButton!
    @IBOutlet weak var btn72: UIButton!
    @IBOutlet weak var btn73: UIButton!
    @IBOutlet weak var btn81: UIButton!
    @IBOutlet weak var btn82: UIButton!
    @IBOutlet weak var btn83: UIButton!
    @IBOutlet weak var btn91: UIButton!
    @IBOutlet weak var btn92: UIButton!
    @IBOutlet weak var btn93: UIButton!
    @IBOutlet weak var btn74: UIButton!
    @IBOutlet weak var btn75: UIButton!
    @IBOutlet weak var btn76: UIButton!
    @IBOutlet weak var btn84: UIButton!
    @IBOutlet weak var btn85: UIButton!
    @IBOutlet weak var btn86: UIButton!
    @IBOutlet weak var btn94: UIButton!
    @IBOutlet weak var btn95: UIButton!
    @IBOutlet weak var btn96: UIButton!
    @IBOutlet weak var btn77: UIButton!
    @IBOutlet weak var btn78: UIButton!
    @IBOutlet weak var btn79: UIButton!
    @IBOutlet weak var btn87: UIButton!
    @IBOutlet weak var btn88: UIButton!
    @IBOutlet weak var btn89: UIButton!
    @IBOutlet weak var btn97: UIButton!
    @IBOutlet weak var btn98: UIButton!
    @IBOutlet weak var btn99: UIButton!
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var categorybutton: UIButton!
    @IBOutlet weak var titlebutton: UIButton!
    
    //UITextfieldに紐づいてる
    @IBOutlet weak var compleationdateTextField: UITextField!
    //UIDatePickerを定義するための変数
    var datePicker2: UIDatePicker = UIDatePicker()

    
    
    //viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        print(mandara.projectName)
        print(mandara.category)
        print(mandara.date)
        print(mandara.completiondate)
        
        //date表示
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"

        let dateString:String = formatter.string(from: mandara.date)
        datelabel.text = "作成日:\(dateString)"
        
        //completiondateの表示
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "yyyy-MM-dd"
        let dateString2:String = formatter.string(from: mandara.completiondate)
        compleationdateTextField.text = "完了予定日:\(dateString2)"
        
        
        //カテゴリー表示、タイトル表示
        categorybutton.setTitle("\(mandara.category)", for: .normal)
        titlebutton.setTitle("\(mandara.projectName)", for: .normal)
        

        
        //角丸
        categorybutton.layer.cornerRadius = 10.0
        titlebutton.layer.cornerRadius = 10.0

        
        // タイトルの色
        categorybutton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        titlebutton.setTitleColor(UIColor.black, for: UIControl.State.normal)

        //buttonの設定

        btn11.setTitle(mandara.item11, for: .normal)
        btn12.setTitle(mandara.item12, for: .normal)
        btn13.setTitle(mandara.item13, for: .normal)
        btn14.setTitle(mandara.item14, for: .normal)
        btn15.setTitle(mandara.item15, for: .normal)
        btn16.setTitle(mandara.item16, for: .normal)
        btn17.setTitle(mandara.item17, for: .normal)
        btn18.setTitle(mandara.item18, for: .normal)
        btn19.setTitle(mandara.item19, for: .normal)
        btn21.setTitle(mandara.item21, for: .normal)
        btn22.setTitle(mandara.item22, for: .normal)
        btn23.setTitle(mandara.item23, for: .normal)
        btn24.setTitle(mandara.item24, for: .normal)
        btn25.setTitle(mandara.item25, for: .normal)
        btn26.setTitle(mandara.item26, for: .normal)
        btn27.setTitle(mandara.item27, for: .normal)
        btn28.setTitle(mandara.item28, for: .normal)
        btn29.setTitle(mandara.item29, for: .normal)
        btn31.setTitle(mandara.item31, for: .normal)
        btn32.setTitle(mandara.item32, for: .normal)
        btn33.setTitle(mandara.item33, for: .normal)
        btn34.setTitle(mandara.item34, for: .normal)
        btn35.setTitle(mandara.item35, for: .normal)
        btn36.setTitle(mandara.item36, for: .normal)
        btn37.setTitle(mandara.item37, for: .normal)
        btn38.setTitle(mandara.item38, for: .normal)
        btn39.setTitle(mandara.item39, for: .normal)
        btn41.setTitle(mandara.item41, for: .normal)
        btn42.setTitle(mandara.item42, for: .normal)
        btn43.setTitle(mandara.item43, for: .normal)
        btn44.setTitle(mandara.item44, for: .normal)
        btn45.setTitle(mandara.item45, for: .normal)
        btn46.setTitle(mandara.item46, for: .normal)
        btn47.setTitle(mandara.item47, for: .normal)
        btn48.setTitle(mandara.item48, for: .normal)
        btn49.setTitle(mandara.item49, for: .normal)
        btn51.setTitle(mandara.item15, for: .normal)
        btn52.setTitle(mandara.item25, for: .normal)
        btn53.setTitle(mandara.item35, for: .normal)
        btn54.setTitle(mandara.item45, for: .normal)
        btn55.setTitle(mandara.item55, for: .normal)
        btn56.setTitle(mandara.item66, for: .normal)
        btn57.setTitle(mandara.item75, for: .normal)
        btn58.setTitle(mandara.item85, for: .normal)
        btn59.setTitle(mandara.item95, for: .normal)
        btn61.setTitle(mandara.item61, for: .normal)
        btn62.setTitle(mandara.item62, for: .normal)
        btn63.setTitle(mandara.item63, for: .normal)
        btn64.setTitle(mandara.item64, for: .normal)
        btn65.setTitle(mandara.item65, for: .normal)
        btn66.setTitle(mandara.item66, for: .normal)
        btn67.setTitle(mandara.item67, for: .normal)
        btn68.setTitle(mandara.item68, for: .normal)
        btn69.setTitle(mandara.item69, for: .normal)
        btn71.setTitle(mandara.item71, for: .normal)
        btn72.setTitle(mandara.item72, for: .normal)
        btn73.setTitle(mandara.item73, for: .normal)
        btn74.setTitle(mandara.item74, for: .normal)
        btn75.setTitle(mandara.item75, for: .normal)
        btn76.setTitle(mandara.item76, for: .normal)
        btn77.setTitle(mandara.item77, for: .normal)
        btn78.setTitle(mandara.item78, for: .normal)
        btn79.setTitle(mandara.item79, for: .normal)
        btn81.setTitle(mandara.item81, for: .normal)
        btn82.setTitle(mandara.item82, for: .normal)
        btn83.setTitle(mandara.item83, for: .normal)
        btn84.setTitle(mandara.item84, for: .normal)
        btn85.setTitle(mandara.item85, for: .normal)
        btn86.setTitle(mandara.item86, for: .normal)
        btn87.setTitle(mandara.item87, for: .normal)
        btn88.setTitle(mandara.item88, for: .normal)
        btn89.setTitle(mandara.item89, for: .normal)
        btn91.setTitle(mandara.item91, for: .normal)
        btn92.setTitle(mandara.item92, for: .normal)
        btn93.setTitle(mandara.item93, for: .normal)
        btn94.setTitle(mandara.item94, for: .normal)
        btn95.setTitle(mandara.item95, for: .normal)
        btn96.setTitle(mandara.item96, for: .normal)
        btn97.setTitle(mandara.item97, for: .normal)
        btn98.setTitle(mandara.item98, for: .normal)
        btn99.setTitle(mandara.item99, for: .normal)
        

             //StackViewの中のStackviewの中のbutton = button
             // StoryboardでUIButtonのタグを設定している
                stackall.subviews.forEach { subview in
                guard let childStackView = subview as? UIStackView else {return}
                childStackView.subviews.forEach { subview2 in
                    guard let button = subview2 as? UIButton else {return}
                    
                    // それをログ出力
                    print(button.tag)

                    //ボタンの枠線の幅（太さ）を設定しています。
                    button.layer.borderWidth = 0.8
                    // 枠線の色
                    button.layer.borderColor = UIColor.black.cgColor
                    // タイトルの色
                    button.setTitleColor(UIColor.black, for: UIControl.State.normal)
                    
                    // フォントサイズ
                    button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    // 何行で表示させるか
                    button.titleLabel?.numberOfLines = 3
                    // 文字サイズの調整をするか
                    button.titleLabel?.adjustsFontSizeToFitWidth = true
                    // どこまで小さくするか
                    button.titleLabel?.minimumScaleFactor = 0.2

                    button.addTarget(
                        self,
                        action: #selector(transitionToNextViewController(sender:)),
                        for: .touchUpInside)}
           }
                    // ピッカー設定
                    datePicker2.datePickerMode = UIDatePicker.Mode.date
                    datePicker2.timeZone = NSTimeZone.local
                    datePicker2.locale = Locale.current
                    datePicker2.preferredDatePickerStyle = .wheels
                    compleationdateTextField.inputView = datePicker2
                     // 決定バーの生成
                    let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
                    let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
                    let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
                    toolbar.setItems([spacelItem, doneItem], animated: true)

                     // インプットビュー設定(紐づいているUITextfieldへ代入)
                     compleationdateTextField.inputView = datePicker2
                     compleationdateTextField.inputAccessoryView = toolbar
    }
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.textreload()
    }
    
    
    @objc
    private func transitionToNextViewController(sender: UIButton) {
        //遷移先viewcontorollerのインスタンスを取得する。
        let mandaraItemInputViewController = storyboard!.instantiateViewController(withIdentifier: "Next") as! MandaraItemInputViewController
        
        // MandaraItemを渡す
        mandaraItemInputViewController.mandara = mandara
        
        print(sender.tag)
        mandaraItemInputViewController.mandaraPosition = sender.tag
        
        
        navigationController?.pushViewController(mandaraItemInputViewController, animated: true)
        }
    
    @IBAction func trashbutton(_ sender: Any) {
        print("削除します！")
    //アラートを表示する↓＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
    let alert: UIAlertController = UIAlertController(title: "注意", message: "全て初期化されますが、宜しいですか？", preferredStyle: .actionSheet)
    let canselAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: .cancel) { (UIAlertAction) in
        print("キャンセル")
    }
    let okAction: UIAlertAction = UIAlertAction(title: "削除", style: .destructive) { (UIAlertAction) in
        // 「削除」が押された時の処理をここに記述
        try! self.realm.write {self.mandara.item11 = ""}
        try! self.realm.write {self.mandara.item12 = ""}
        try! self.realm.write {self.mandara.item13 = ""}
        try! self.realm.write {self.mandara.item14 = ""}
        try! self.realm.write {self.mandara.item15 = ""}
        try! self.realm.write {self.mandara.item16 = ""}
        try! self.realm.write {self.mandara.item17 = ""}
        try! self.realm.write {self.mandara.item18 = ""}
        try! self.realm.write {self.mandara.item19 = ""}
        try! self.realm.write {self.mandara.item21 = ""}
        try! self.realm.write {self.mandara.item22 = ""}
        try! self.realm.write {self.mandara.item23 = ""}
        try! self.realm.write {self.mandara.item24 = ""}
        try! self.realm.write {self.mandara.item25 = ""}
        try! self.realm.write {self.mandara.item26 = ""}
        try! self.realm.write {self.mandara.item27 = ""}
        try! self.realm.write {self.mandara.item28 = ""}
        try! self.realm.write {self.mandara.item29 = ""}
        try! self.realm.write {self.mandara.item31 = ""}
        try! self.realm.write {self.mandara.item32 = ""}
        try! self.realm.write {self.mandara.item33 = ""}
        try! self.realm.write {self.mandara.item34 = ""}
        try! self.realm.write {self.mandara.item35 = ""}
        try! self.realm.write {self.mandara.item36 = ""}
        try! self.realm.write {self.mandara.item37 = ""}
        try! self.realm.write {self.mandara.item38 = ""}
        try! self.realm.write {self.mandara.item39 = ""}
        try! self.realm.write {self.mandara.item41 = ""}
        try! self.realm.write {self.mandara.item42 = ""}
        try! self.realm.write {self.mandara.item43 = ""}
        try! self.realm.write {self.mandara.item44 = ""}
        try! self.realm.write {self.mandara.item45 = ""}
        try! self.realm.write {self.mandara.item46 = ""}
        try! self.realm.write {self.mandara.item47 = ""}
        try! self.realm.write {self.mandara.item48 = ""}
        try! self.realm.write {self.mandara.item49 = ""}
        try! self.realm.write {self.mandara.item55 = ""}
        try! self.realm.write {self.mandara.item61 = ""}
        try! self.realm.write {self.mandara.item62 = ""}
        try! self.realm.write {self.mandara.item63 = ""}
        try! self.realm.write {self.mandara.item64 = ""}
        try! self.realm.write {self.mandara.item65 = ""}
        try! self.realm.write {self.mandara.item66 = ""}
        try! self.realm.write {self.mandara.item67 = ""}
        try! self.realm.write {self.mandara.item68 = ""}
        try! self.realm.write {self.mandara.item69 = ""}
        try! self.realm.write {self.mandara.item71 = ""}
        try! self.realm.write {self.mandara.item72 = ""}
        try! self.realm.write {self.mandara.item73 = ""}
        try! self.realm.write {self.mandara.item74 = ""}
        try! self.realm.write {self.mandara.item75 = ""}
        try! self.realm.write {self.mandara.item76 = ""}
        try! self.realm.write {self.mandara.item77 = ""}
        try! self.realm.write {self.mandara.item78 = ""}
        try! self.realm.write {self.mandara.item79 = ""}
        try! self.realm.write {self.mandara.item81 = ""}
        try! self.realm.write {self.mandara.item82 = ""}
        try! self.realm.write {self.mandara.item83 = ""}
        try! self.realm.write {self.mandara.item84 = ""}
        try! self.realm.write {self.mandara.item85 = ""}
        try! self.realm.write {self.mandara.item86 = ""}
        try! self.realm.write {self.mandara.item87 = ""}
        try! self.realm.write {self.mandara.item88 = ""}
        try! self.realm.write {self.mandara.item89 = ""}
        try! self.realm.write {self.mandara.item91 = ""}
        try! self.realm.write {self.mandara.item92 = ""}
        try! self.realm.write {self.mandara.item93 = ""}
        try! self.realm.write {self.mandara.item94 = ""}
        try! self.realm.write {self.mandara.item95 = ""}
        try! self.realm.write {self.mandara.item96 = ""}
        try! self.realm.write {self.mandara.item97 = ""}
        try! self.realm.write {self.mandara.item98 = ""}
        try! self.realm.write {self.mandara.item99 = ""}
        self.textreload()
        }

    //アラートに設定を反映させる
    alert.addAction(okAction)
    alert.addAction(canselAction)
    //アラート画面を表示させる
    present(alert, animated: true, completion: nil)
    //アラートを表示する↑＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
    }
    
    func textreload() {
        btn11.setTitle(mandara.item11, for: .normal)
        btn12.setTitle(mandara.item12, for: .normal)
        btn13.setTitle(mandara.item13, for: .normal)
        btn14.setTitle(mandara.item14, for: .normal)
        btn15.setTitle(mandara.item15, for: .normal)
        btn16.setTitle(mandara.item16, for: .normal)
        btn17.setTitle(mandara.item17, for: .normal)
        btn18.setTitle(mandara.item18, for: .normal)
        btn19.setTitle(mandara.item19, for: .normal)
        btn21.setTitle(mandara.item21, for: .normal)
        btn22.setTitle(mandara.item22, for: .normal)
        btn23.setTitle(mandara.item23, for: .normal)
        btn24.setTitle(mandara.item24, for: .normal)
        btn25.setTitle(mandara.item25, for: .normal)
        btn26.setTitle(mandara.item26, for: .normal)
        btn27.setTitle(mandara.item27, for: .normal)
        btn28.setTitle(mandara.item28, for: .normal)
        btn29.setTitle(mandara.item29, for: .normal)
        btn31.setTitle(mandara.item31, for: .normal)
        btn32.setTitle(mandara.item32, for: .normal)
        btn33.setTitle(mandara.item33, for: .normal)
        btn34.setTitle(mandara.item34, for: .normal)
        btn35.setTitle(mandara.item35, for: .normal)
        btn36.setTitle(mandara.item36, for: .normal)
        btn37.setTitle(mandara.item37, for: .normal)
        btn38.setTitle(mandara.item38, for: .normal)
        btn39.setTitle(mandara.item39, for: .normal)
        btn41.setTitle(mandara.item41, for: .normal)
        btn42.setTitle(mandara.item42, for: .normal)
        btn43.setTitle(mandara.item43, for: .normal)
        btn44.setTitle(mandara.item44, for: .normal)
        btn45.setTitle(mandara.item45, for: .normal)
        btn46.setTitle(mandara.item46, for: .normal)
        btn47.setTitle(mandara.item47, for: .normal)
        btn48.setTitle(mandara.item48, for: .normal)
        btn49.setTitle(mandara.item49, for: .normal)
        btn51.setTitle(mandara.item15, for: .normal)
        btn52.setTitle(mandara.item25, for: .normal)
        btn53.setTitle(mandara.item35, for: .normal)
        btn54.setTitle(mandara.item45, for: .normal)
        btn55.setTitle(mandara.item55, for: .normal)
        btn56.setTitle(mandara.item66, for: .normal)
        btn57.setTitle(mandara.item75, for: .normal)
        btn58.setTitle(mandara.item85, for: .normal)
        btn59.setTitle(mandara.item95, for: .normal)
        btn61.setTitle(mandara.item61, for: .normal)
        btn62.setTitle(mandara.item62, for: .normal)
        btn63.setTitle(mandara.item63, for: .normal)
        btn64.setTitle(mandara.item64, for: .normal)
        btn65.setTitle(mandara.item65, for: .normal)
        btn66.setTitle(mandara.item66, for: .normal)
        btn67.setTitle(mandara.item67, for: .normal)
        btn68.setTitle(mandara.item68, for: .normal)
        btn69.setTitle(mandara.item69, for: .normal)
        btn71.setTitle(mandara.item71, for: .normal)
        btn72.setTitle(mandara.item72, for: .normal)
        btn73.setTitle(mandara.item73, for: .normal)
        btn74.setTitle(mandara.item74, for: .normal)
        btn75.setTitle(mandara.item75, for: .normal)
        btn76.setTitle(mandara.item76, for: .normal)
        btn77.setTitle(mandara.item77, for: .normal)
        btn78.setTitle(mandara.item78, for: .normal)
        btn79.setTitle(mandara.item79, for: .normal)
        btn81.setTitle(mandara.item81, for: .normal)
        btn82.setTitle(mandara.item82, for: .normal)
        btn83.setTitle(mandara.item83, for: .normal)
        btn84.setTitle(mandara.item84, for: .normal)
        btn85.setTitle(mandara.item85, for: .normal)
        btn86.setTitle(mandara.item86, for: .normal)
        btn87.setTitle(mandara.item87, for: .normal)
        btn88.setTitle(mandara.item88, for: .normal)
        btn89.setTitle(mandara.item89, for: .normal)
        btn91.setTitle(mandara.item91, for: .normal)
        btn92.setTitle(mandara.item92, for: .normal)
        btn93.setTitle(mandara.item93, for: .normal)
        btn94.setTitle(mandara.item94, for: .normal)
        btn95.setTitle(mandara.item95, for: .normal)
        btn96.setTitle(mandara.item96, for: .normal)
        btn97.setTitle(mandara.item97, for: .normal)
        btn98.setTitle(mandara.item98, for: .normal)
        btn99.setTitle(mandara.item99, for: .normal)
    }
    
        
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func categorybuttontap(_ sender: Any) {
        
        print("categoryボタン押されました！")
        var alertTextField: UITextField?

        let alert = UIAlertController(
            title: "Edit",
            message: "Enter new Category",
            preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(
            configurationHandler: {(textField: UITextField!) in
                alertTextField = textField
                //タップされたボタンのタグを識別する
                textField.text = self.categorybutton.currentTitle
        })
        alert.addAction(
            UIAlertAction(
                title: "Cancel",
                style: UIAlertAction.Style.cancel,
                handler: nil))
            
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertAction.Style.default) { _ in
                if let text = alertTextField?.text {
                try! self.realm.write {self.mandara.category = text}
                }
                self.categorybutton.setTitle(self.mandara.category, for: .normal)

                })
        self.present(alert, animated: true, completion: nil)
        }
                
    @IBAction func titlebuttontap(_ sender: Any) {
                print("titleボタン押されました！")
        var alertTextField: UITextField?

        let alert = UIAlertController(
            title: "Edit",
            message: "Enter new ProjectName",
            preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(
            configurationHandler: {(textField: UITextField!) in
                alertTextField = textField
                //タップされたボタンのタグを識別する
                textField.text = self.titlebutton.currentTitle
        })
        alert.addAction(
            UIAlertAction(
                title: "Cancel",
                style: UIAlertAction.Style.cancel,
                handler: nil))
            
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertAction.Style.default) { _ in
                if let text = alertTextField?.text {
                try! self.realm.write {self.mandara.projectName = text}
                }
                self.titlebutton.setTitle(self.mandara.projectName, for: .normal)

                })
        self.present(alert, animated: true, completion: nil)
        }
    
        @objc func done(){
        compleationdateTextField.endEditing(true)
            
            try! realm.write {
                self.mandara.completiondate = self.datePicker2.date
            }
       
            //completiondateの表示
            let formatter2 = DateFormatter()
            formatter2.dateFormat = "yyyy-MM-dd"
            let dateString2:String = formatter2.string(from: mandara.completiondate)
            compleationdateTextField.text = "完了予定日:\(dateString2)"
            
        }
    
        
    }

