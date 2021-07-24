//
//  MandaraItemInputViewController.swift
//  mandara
//
//  Created by kazuki on 2021/03/06.
//

import UIKit
import RealmSwift

class MandaraItemInputViewController: UIViewController {
    
    @IBOutlet weak var stack9: UIStackView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    
    var mandara: Mandara!   // 追加する
    let realm = try! Realm()    // 追加する
    var mandaraPosition = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print(mandara.projectName)
        print(mandara.category)
        print(mandara.item)        
        print(mandaraPosition)



            
            stack9.subviews.forEach { subview in
            guard let childStackView = subview as? UIStackView else {return}
            childStackView.subviews.forEach { subview2 in
                guard let button = subview2 as? UIButton else {return}
                
                // それをログ出力
                print(button.tag)
                //ボタンの枠線の幅（太さ）を設定しています。
                button.layer.borderWidth = 1.0
                // 枠線の色
                button.layer.borderColor = UIColor.black.cgColor
                // タイトルの色
                button.setTitleColor(UIColor.black, for: UIControl.State.normal)
                // 何行で表示させるか
                button.titleLabel?.numberOfLines = 3
                // 文字サイズの調整をするか
                button.titleLabel?.adjustsFontSizeToFitWidth = true
                // どこまで小さくするか
                button.titleLabel?.minimumScaleFactor = 0.2

            // StoryboardでUIButtonのタグを設定している
            // それをログ出力
            print(button.tag)
            
            if mandaraPosition < 20 {
            
              btn1.setTitle(mandara.item11, for: .normal)
              btn2.setTitle(mandara.item12, for: .normal)
              btn3.setTitle(mandara.item13, for: .normal)
              btn4.setTitle(mandara.item14, for: .normal)
              btn5.setTitle(mandara.item15, for: .normal)
              btn6.setTitle(mandara.item16, for: .normal)
              btn7.setTitle(mandara.item17, for: .normal)
              btn8.setTitle(mandara.item18, for: .normal)
              btn9.setTitle(mandara.item19, for: .normal)
                  // ボタン背景色設定
                  let rgba = UIColor(red: 255/255, green: 178/255, blue: 153/255, alpha: 1.0)
                  btn5.backgroundColor = rgba
                
            } else if mandaraPosition < 30 {
                
                btn1.setTitle(mandara.item21, for: .normal)
                btn2.setTitle(mandara.item22, for: .normal)
                btn3.setTitle(mandara.item23, for: .normal)
                btn4.setTitle(mandara.item24, for: .normal)
                btn5.setTitle(mandara.item25, for: .normal)
                btn6.setTitle(mandara.item26, for: .normal)
                btn7.setTitle(mandara.item27, for: .normal)
                btn8.setTitle(mandara.item28, for: .normal)
                btn9.setTitle(mandara.item29, for: .normal)
                   // ボタン背景色設定
                   let rgba = UIColor(red: 255/255, green: 255/255, blue: 153/255, alpha: 1.0)
                   btn5.backgroundColor = rgba
            
            } else if mandaraPosition < 40 {
                
                btn1.setTitle(mandara.item31, for: .normal)
                btn2.setTitle(mandara.item32, for: .normal)
                btn3.setTitle(mandara.item33, for: .normal)
                btn4.setTitle(mandara.item34, for: .normal)
                btn5.setTitle(mandara.item35, for: .normal)
                btn6.setTitle(mandara.item36, for: .normal)
                btn7.setTitle(mandara.item37, for: .normal)
                btn8.setTitle(mandara.item38, for: .normal)
                btn9.setTitle(mandara.item39, for: .normal)
                   // ボタン背景色設定
                   let rgba = UIColor(red: 178/255, green: 255/255, blue: 153/255, alpha: 1.0)
                   btn5.backgroundColor = rgba

            } else if mandaraPosition < 50 {
                
                btn1.setTitle(mandara.item41, for: .normal)
                btn2.setTitle(mandara.item42, for: .normal)
                btn3.setTitle(mandara.item43, for: .normal)
                btn4.setTitle(mandara.item44, for: .normal)
                btn5.setTitle(mandara.item45, for: .normal)
                btn6.setTitle(mandara.item46, for: .normal)
                btn7.setTitle(mandara.item47, for: .normal)
                btn8.setTitle(mandara.item48, for: .normal)
                btn9.setTitle(mandara.item49, for: .normal)
                   // ボタン背景色設定
                   let rgba = UIColor(red: 255/255, green: 153/255, blue: 178/255, alpha: 1.0)
                   btn5.backgroundColor = rgba

            } else if mandaraPosition < 60 {
                
                btn1.setTitle(mandara.item15, for: .normal)
                btn2.setTitle(mandara.item25, for: .normal)
                btn3.setTitle(mandara.item35, for: .normal)
                btn4.setTitle(mandara.item45, for: .normal)
                btn5.setTitle(mandara.item55, for: .normal)
                btn6.setTitle(mandara.item66, for: .normal)
                btn7.setTitle(mandara.item75, for: .normal)
                btn8.setTitle(mandara.item85, for: .normal)
                btn9.setTitle(mandara.item95, for: .normal)
                   // ボタン背景色設定
                let rgba1 = UIColor(red: 255/255, green: 178/255, blue: 153/255, alpha: 1.0)
                   btn1.backgroundColor = rgba1
                let rgba2 = UIColor(red: 255/255, green: 255/255, blue: 153/255, alpha: 1.0)
                   btn2.backgroundColor = rgba2
                let rgba3 = UIColor(red: 178/255, green: 255/255, blue: 153/255, alpha: 1.0)
                   btn3.backgroundColor = rgba3
                let rgba4 = UIColor(red: 255/255, green: 153/255, blue: 178/255, alpha: 1.0)
                   btn4.backgroundColor = rgba4
                let rgba5 = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1.0)
                   btn5.backgroundColor = rgba5
                let rgba6 = UIColor(red: 153/255, green: 255/255, blue: 204/255, alpha: 1.0)
                   btn6.backgroundColor = rgba6
                let rgba7 = UIColor(red: 255/255, green: 153/255, blue: 255/255, alpha: 1.0)
                   btn7.backgroundColor = rgba7
                let rgba8 = UIColor(red: 153/255, green: 153/255, blue: 255/255, alpha: 1.0)
                   btn8.backgroundColor = rgba8
                let rgba9 = UIColor(red: 153/255, green: 229/255, blue: 255/255, alpha: 1.0)
                   btn9.backgroundColor = rgba9
                
                
            } else if mandaraPosition < 70 {
                
                btn1.setTitle(mandara.item61, for: .normal)
                btn2.setTitle(mandara.item62, for: .normal)
                btn3.setTitle(mandara.item63, for: .normal)
                btn4.setTitle(mandara.item64, for: .normal)
                btn5.setTitle(mandara.item65, for: .normal)
                btn6.setTitle(mandara.item66, for: .normal)
                btn7.setTitle(mandara.item67, for: .normal)
                btn8.setTitle(mandara.item68, for: .normal)
                btn9.setTitle(mandara.item69, for: .normal)
                   // ボタン背景色設定
                let rgba = UIColor(red: 153/255, green: 255/255, blue: 204/255, alpha: 1.0)
                   btn5.backgroundColor = rgba
                
            } else if mandaraPosition < 80 {
                
                btn1.setTitle(mandara.item71, for: .normal)
                btn2.setTitle(mandara.item72, for: .normal)
                btn3.setTitle(mandara.item73, for: .normal)
                btn4.setTitle(mandara.item74, for: .normal)
                btn5.setTitle(mandara.item75, for: .normal)
                btn6.setTitle(mandara.item76, for: .normal)
                btn7.setTitle(mandara.item77, for: .normal)
                btn8.setTitle(mandara.item78, for: .normal)
                btn9.setTitle(mandara.item79, for: .normal)
                   // ボタン背景色設定
                let rgba = UIColor(red: 255/255, green: 153/255, blue: 255/255, alpha: 1.0)
                   btn5.backgroundColor = rgba
                
            } else if mandaraPosition < 90 {
                
                btn1.setTitle(mandara.item81, for: .normal)
                btn2.setTitle(mandara.item82, for: .normal)
                btn3.setTitle(mandara.item83, for: .normal)
                btn4.setTitle(mandara.item84, for: .normal)
                btn5.setTitle(mandara.item85, for: .normal)
                btn6.setTitle(mandara.item86, for: .normal)
                btn7.setTitle(mandara.item87, for: .normal)
                btn8.setTitle(mandara.item88, for: .normal)
                btn9.setTitle(mandara.item89, for: .normal)
                   // ボタン背景色設定
                let rgba = UIColor(red: 153/255, green: 153/255, blue: 255/255, alpha: 1.0)
                   btn5.backgroundColor = rgba
                
            } else if mandaraPosition < 100 {
                
                btn1.setTitle(mandara.item91, for: .normal)
                btn2.setTitle(mandara.item92, for: .normal)
                btn3.setTitle(mandara.item93, for: .normal)
                btn4.setTitle(mandara.item94, for: .normal)
                btn5.setTitle(mandara.item95, for: .normal)
                btn6.setTitle(mandara.item96, for: .normal)
                btn7.setTitle(mandara.item97, for: .normal)
                btn8.setTitle(mandara.item98, for: .normal)
                btn9.setTitle(mandara.item99, for: .normal)
                   // ボタン背景色設定
                let rgba = UIColor(red: 153/255, green: 229/255, blue: 255/255, alpha: 1.0)
                   btn5.backgroundColor = rgba
            }
            
            
            button.addTarget(
                self,
                action: #selector(addmandaraitemfunction(sender:)),
                for: .touchUpInside
            )
    }
    }
    }
        @objc
        func addmandaraitemfunction(sender: UIButton) {
        var alertTextField: UITextField?

        let alert = UIAlertController(
            title: "Edit",
            message: "Enter new MandaraItem",
            preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(
            configurationHandler: {(textField: UITextField!) in
                alertTextField = textField
                //タップされたボタンのタグを識別する
                
                if sender.tag == 1{textField.text = self.btn1.currentTitle
                } else if sender.tag == 2{textField.text = self.btn2.currentTitle
                } else if sender.tag == 3{textField.text = self.btn3.currentTitle
                } else if sender.tag == 4{textField.text = self.btn4.currentTitle
                } else if sender.tag == 5{textField.text = self.btn5.currentTitle
                } else if sender.tag == 6{textField.text = self.btn6.currentTitle
                } else if sender.tag == 7{textField.text = self.btn7.currentTitle
                } else if sender.tag == 8{textField.text = self.btn8.currentTitle
                } else if sender.tag == 9{textField.text = self.btn9.currentTitle
                }
                // textField.placeholder = "Mike"
                // textField.isSecureTextEntry = true
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
                    print(sender.tag)
                    
                    if self.mandaraPosition < 20 {
                    
                        if sender.tag == 1{try! self.realm.write {self.mandara.item11 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item12 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item13 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item14 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item15 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item16 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item17 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item18 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item19 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item11, for: .normal)
                        self.btn2.setTitle(self.mandara.item12, for: .normal)
                        self.btn3.setTitle(self.mandara.item13, for: .normal)
                        self.btn4.setTitle(self.mandara.item14, for: .normal)
                        self.btn5.setTitle(self.mandara.item15, for: .normal)
                        self.btn6.setTitle(self.mandara.item16, for: .normal)
                        self.btn7.setTitle(self.mandara.item17, for: .normal)
                        self.btn8.setTitle(self.mandara.item18, for: .normal)
                        self.btn9.setTitle(self.mandara.item19, for: .normal)
                        
                    } else if self.mandaraPosition < 30 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item21 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item22 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item23 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item24 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item25 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item26 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item27 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item28 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item29 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item21, for: .normal)
                        self.btn2.setTitle(self.mandara.item22, for: .normal)
                        self.btn3.setTitle(self.mandara.item23, for: .normal)
                        self.btn4.setTitle(self.mandara.item24, for: .normal)
                        self.btn5.setTitle(self.mandara.item25, for: .normal)
                        self.btn6.setTitle(self.mandara.item26, for: .normal)
                        self.btn7.setTitle(self.mandara.item27, for: .normal)
                        self.btn8.setTitle(self.mandara.item28, for: .normal)
                        self.btn9.setTitle(self.mandara.item29, for: .normal)
                        
                    } else if self.mandaraPosition < 40 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item31 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item32 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item33 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item34 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item35 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item36 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item37 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item38 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item39 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item31, for: .normal)
                        self.btn2.setTitle(self.mandara.item32, for: .normal)
                        self.btn3.setTitle(self.mandara.item33, for: .normal)
                        self.btn4.setTitle(self.mandara.item34, for: .normal)
                        self.btn5.setTitle(self.mandara.item35, for: .normal)
                        self.btn6.setTitle(self.mandara.item36, for: .normal)
                        self.btn7.setTitle(self.mandara.item37, for: .normal)
                        self.btn8.setTitle(self.mandara.item38, for: .normal)
                        self.btn9.setTitle(self.mandara.item39, for: .normal)
                        
                    } else if self.mandaraPosition < 50 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item41 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item42 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item43 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item44 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item45 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item46 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item47 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item48 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item49 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item41, for: .normal)
                        self.btn2.setTitle(self.mandara.item42, for: .normal)
                        self.btn3.setTitle(self.mandara.item43, for: .normal)
                        self.btn4.setTitle(self.mandara.item44, for: .normal)
                        self.btn5.setTitle(self.mandara.item45, for: .normal)
                        self.btn6.setTitle(self.mandara.item46, for: .normal)
                        self.btn7.setTitle(self.mandara.item47, for: .normal)
                        self.btn8.setTitle(self.mandara.item48, for: .normal)
                        self.btn9.setTitle(self.mandara.item49, for: .normal)
                        
                    } else if self.mandaraPosition < 60 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item15 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item25 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item35 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item45 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item55 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item65 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item75 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item85 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item95 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item15, for: .normal)
                        self.btn2.setTitle(self.mandara.item25, for: .normal)
                        self.btn3.setTitle(self.mandara.item35, for: .normal)
                        self.btn4.setTitle(self.mandara.item45, for: .normal)
                        self.btn5.setTitle(self.mandara.item55, for: .normal)
                        self.btn6.setTitle(self.mandara.item65, for: .normal)
                        self.btn7.setTitle(self.mandara.item75, for: .normal)
                        self.btn8.setTitle(self.mandara.item85, for: .normal)
                        self.btn9.setTitle(self.mandara.item95, for: .normal)

                    } else if self.mandaraPosition < 70 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item61 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item62 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item63 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item64 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item65 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item66 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item67 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item68 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item69 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item61, for: .normal)
                        self.btn2.setTitle(self.mandara.item62, for: .normal)
                        self.btn3.setTitle(self.mandara.item63, for: .normal)
                        self.btn4.setTitle(self.mandara.item64, for: .normal)
                        self.btn5.setTitle(self.mandara.item65, for: .normal)
                        self.btn6.setTitle(self.mandara.item66, for: .normal)
                        self.btn7.setTitle(self.mandara.item67, for: .normal)
                        self.btn8.setTitle(self.mandara.item68, for: .normal)
                        self.btn9.setTitle(self.mandara.item69, for: .normal)
                        
                    } else if self.mandaraPosition < 80 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item71 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item72 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item73 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item74 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item75 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item76 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item77 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item78 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item79 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item71, for: .normal)
                        self.btn2.setTitle(self.mandara.item72, for: .normal)
                        self.btn3.setTitle(self.mandara.item73, for: .normal)
                        self.btn4.setTitle(self.mandara.item74, for: .normal)
                        self.btn5.setTitle(self.mandara.item75, for: .normal)
                        self.btn6.setTitle(self.mandara.item76, for: .normal)
                        self.btn7.setTitle(self.mandara.item77, for: .normal)
                        self.btn8.setTitle(self.mandara.item78, for: .normal)
                        self.btn9.setTitle(self.mandara.item79, for: .normal)

                    } else if self.mandaraPosition < 90 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item81 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item82 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item83 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item84 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item85 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item86 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item87 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item88 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item89 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item81, for: .normal)
                        self.btn2.setTitle(self.mandara.item82, for: .normal)
                        self.btn3.setTitle(self.mandara.item83, for: .normal)
                        self.btn4.setTitle(self.mandara.item84, for: .normal)
                        self.btn5.setTitle(self.mandara.item85, for: .normal)
                        self.btn6.setTitle(self.mandara.item86, for: .normal)
                        self.btn7.setTitle(self.mandara.item87, for: .normal)
                        self.btn8.setTitle(self.mandara.item88, for: .normal)
                        self.btn9.setTitle(self.mandara.item89, for: .normal)

                    } else if self.mandaraPosition < 100 {
                        
                        if sender.tag == 1{try! self.realm.write {self.mandara.item91 = text}
                        } else if sender.tag == 2{try! self.realm.write {self.mandara.item92 = text}
                        } else if sender.tag == 3{try! self.realm.write {self.mandara.item93 = text}
                        } else if sender.tag == 4{try! self.realm.write {self.mandara.item94 = text}
                        } else if sender.tag == 5{try! self.realm.write {self.mandara.item95 = text}
                        } else if sender.tag == 6{try! self.realm.write {self.mandara.item96 = text}
                        } else if sender.tag == 7{try! self.realm.write {self.mandara.item97 = text}
                        } else if sender.tag == 8{try! self.realm.write {self.mandara.item98 = text}
                        } else if sender.tag == 9{try! self.realm.write {self.mandara.item99 = text}
                        }
                        
                        self.btn1.setTitle(self.mandara.item91, for: .normal)
                        self.btn2.setTitle(self.mandara.item92, for: .normal)
                        self.btn3.setTitle(self.mandara.item93, for: .normal)
                        self.btn4.setTitle(self.mandara.item94, for: .normal)
                        self.btn5.setTitle(self.mandara.item95, for: .normal)
                        self.btn6.setTitle(self.mandara.item96, for: .normal)
                        self.btn7.setTitle(self.mandara.item97, for: .normal)
                        self.btn8.setTitle(self.mandara.item98, for: .normal)
                        self.btn9.setTitle(self.mandara.item99, for: .normal)
                    }
                }
            }
        )
        self.present(alert, animated: true, completion: nil)

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func trashitembutton(_ sender: Any) {
        print("削除します！")
    //アラートを表示する↓＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
    let alert: UIAlertController = UIAlertController(title: "注意", message: "全て初期化されますが、宜しいですか？", preferredStyle: .actionSheet)
    let canselAction: UIAlertAction = UIAlertAction(title: "キャンセル", style: .cancel) { (UIAlertAction) in
        print("キャンセル")
    }
    let okAction: UIAlertAction = UIAlertAction(title: "削除", style: .destructive) { (UIAlertAction) in
        // 「削除」が押された時の処理をここに記述
        if self.mandaraPosition < 20 {
            try! self.realm.write {self.mandara.item11 = ""}
            try! self.realm.write {self.mandara.item12 = ""}
            try! self.realm.write {self.mandara.item13 = ""}
            try! self.realm.write {self.mandara.item14 = ""}
            try! self.realm.write {self.mandara.item15 = ""}
            try! self.realm.write {self.mandara.item16 = ""}
            try! self.realm.write {self.mandara.item17 = ""}
            try! self.realm.write {self.mandara.item18 = ""}
            try! self.realm.write {self.mandara.item19 = ""}
            
        } else if self.mandaraPosition < 30 {
            try! self.realm.write {self.mandara.item21 = ""}
            try! self.realm.write {self.mandara.item22 = ""}
            try! self.realm.write {self.mandara.item23 = ""}
            try! self.realm.write {self.mandara.item24 = ""}
            try! self.realm.write {self.mandara.item25 = ""}
            try! self.realm.write {self.mandara.item26 = ""}
            try! self.realm.write {self.mandara.item27 = ""}
            try! self.realm.write {self.mandara.item28 = ""}
            try! self.realm.write {self.mandara.item29 = ""}

            
        } else if self.mandaraPosition < 40 {
            try! self.realm.write {self.mandara.item31 = ""}
            try! self.realm.write {self.mandara.item32 = ""}
            try! self.realm.write {self.mandara.item33 = ""}
            try! self.realm.write {self.mandara.item34 = ""}
            try! self.realm.write {self.mandara.item35 = ""}
            try! self.realm.write {self.mandara.item36 = ""}
            try! self.realm.write {self.mandara.item37 = ""}
            try! self.realm.write {self.mandara.item38 = ""}
            try! self.realm.write {self.mandara.item39 = ""}

            
        } else if self.mandaraPosition < 50 {
            try! self.realm.write {self.mandara.item41 = ""}
            try! self.realm.write {self.mandara.item42 = ""}
            try! self.realm.write {self.mandara.item43 = ""}
            try! self.realm.write {self.mandara.item44 = ""}
            try! self.realm.write {self.mandara.item45 = ""}
            try! self.realm.write {self.mandara.item46 = ""}
            try! self.realm.write {self.mandara.item47 = ""}
            try! self.realm.write {self.mandara.item48 = ""}
            try! self.realm.write {self.mandara.item49 = ""}

            
        } else if self.mandaraPosition < 60 {
            try! self.realm.write {self.mandara.item15 = ""}
            try! self.realm.write {self.mandara.item25 = ""}
            try! self.realm.write {self.mandara.item35 = ""}
            try! self.realm.write {self.mandara.item45 = ""}
            try! self.realm.write {self.mandara.item55 = ""}
            try! self.realm.write {self.mandara.item65 = ""}
            try! self.realm.write {self.mandara.item75 = ""}
            try! self.realm.write {self.mandara.item85 = ""}
            try! self.realm.write {self.mandara.item95 = ""}


        } else if self.mandaraPosition < 70 {
            try! self.realm.write {self.mandara.item61 = ""}
            try! self.realm.write {self.mandara.item62 = ""}
            try! self.realm.write {self.mandara.item63 = ""}
            try! self.realm.write {self.mandara.item64 = ""}
            try! self.realm.write {self.mandara.item65 = ""}
            try! self.realm.write {self.mandara.item66 = ""}
            try! self.realm.write {self.mandara.item67 = ""}
            try! self.realm.write {self.mandara.item68 = ""}
            try! self.realm.write {self.mandara.item69 = ""}

            
        } else if self.mandaraPosition < 80 {
            try! self.realm.write {self.mandara.item71 = ""}
            try! self.realm.write {self.mandara.item72 = ""}
            try! self.realm.write {self.mandara.item73 = ""}
            try! self.realm.write {self.mandara.item74 = ""}
            try! self.realm.write {self.mandara.item75 = ""}
            try! self.realm.write {self.mandara.item76 = ""}
            try! self.realm.write {self.mandara.item77 = ""}
            try! self.realm.write {self.mandara.item78 = ""}
            try! self.realm.write {self.mandara.item79 = ""}


        } else if self.mandaraPosition < 90 {
            try! self.realm.write {self.mandara.item81 = ""}
            try! self.realm.write {self.mandara.item82 = ""}
            try! self.realm.write {self.mandara.item83 = ""}
            try! self.realm.write {self.mandara.item84 = ""}
            try! self.realm.write {self.mandara.item85 = ""}
            try! self.realm.write {self.mandara.item86 = ""}
            try! self.realm.write {self.mandara.item87 = ""}
            try! self.realm.write {self.mandara.item88 = ""}
            try! self.realm.write {self.mandara.item89 = ""}


        } else if self.mandaraPosition < 100 {
            try! self.realm.write {self.mandara.item91 = ""}
            try! self.realm.write {self.mandara.item92 = ""}
            try! self.realm.write {self.mandara.item93 = ""}
            try! self.realm.write {self.mandara.item94 = ""}
            try! self.realm.write {self.mandara.item95 = ""}
            try! self.realm.write {self.mandara.item96 = ""}
            try! self.realm.write {self.mandara.item97 = ""}
            try! self.realm.write {self.mandara.item98 = ""}
            try! self.realm.write {self.mandara.item99 = ""}

        }
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
        if mandaraPosition < 20 {
        
          btn1.setTitle(mandara.item11, for: .normal)
          btn2.setTitle(mandara.item12, for: .normal)
          btn3.setTitle(mandara.item13, for: .normal)
          btn4.setTitle(mandara.item14, for: .normal)
          btn5.setTitle(mandara.item15, for: .normal)
          btn6.setTitle(mandara.item16, for: .normal)
          btn7.setTitle(mandara.item17, for: .normal)
          btn8.setTitle(mandara.item18, for: .normal)
          btn9.setTitle(mandara.item19, for: .normal)
              // ボタン背景色設定
              let rgba = UIColor(red: 255/255, green: 178/255, blue: 153/255, alpha: 1.0)
              btn5.backgroundColor = rgba
            
        } else if mandaraPosition < 30 {
            
            btn1.setTitle(mandara.item21, for: .normal)
            btn2.setTitle(mandara.item22, for: .normal)
            btn3.setTitle(mandara.item23, for: .normal)
            btn4.setTitle(mandara.item24, for: .normal)
            btn5.setTitle(mandara.item25, for: .normal)
            btn6.setTitle(mandara.item26, for: .normal)
            btn7.setTitle(mandara.item27, for: .normal)
            btn8.setTitle(mandara.item28, for: .normal)
            btn9.setTitle(mandara.item29, for: .normal)
               // ボタン背景色設定
               let rgba = UIColor(red: 255/255, green: 255/255, blue: 153/255, alpha: 1.0)
               btn5.backgroundColor = rgba
        
        } else if mandaraPosition < 40 {
            
            btn1.setTitle(mandara.item31, for: .normal)
            btn2.setTitle(mandara.item32, for: .normal)
            btn3.setTitle(mandara.item33, for: .normal)
            btn4.setTitle(mandara.item34, for: .normal)
            btn5.setTitle(mandara.item35, for: .normal)
            btn6.setTitle(mandara.item36, for: .normal)
            btn7.setTitle(mandara.item37, for: .normal)
            btn8.setTitle(mandara.item38, for: .normal)
            btn9.setTitle(mandara.item39, for: .normal)
               // ボタン背景色設定
               let rgba = UIColor(red: 178/255, green: 255/255, blue: 153/255, alpha: 1.0)
               btn5.backgroundColor = rgba

        } else if mandaraPosition < 50 {
            
            btn1.setTitle(mandara.item41, for: .normal)
            btn2.setTitle(mandara.item42, for: .normal)
            btn3.setTitle(mandara.item43, for: .normal)
            btn4.setTitle(mandara.item44, for: .normal)
            btn5.setTitle(mandara.item45, for: .normal)
            btn6.setTitle(mandara.item46, for: .normal)
            btn7.setTitle(mandara.item47, for: .normal)
            btn8.setTitle(mandara.item48, for: .normal)
            btn9.setTitle(mandara.item49, for: .normal)
               // ボタン背景色設定
               let rgba = UIColor(red: 255/255, green: 153/255, blue: 178/255, alpha: 1.0)
               btn5.backgroundColor = rgba

        } else if mandaraPosition < 60 {
            
            btn1.setTitle(mandara.item15, for: .normal)
            btn2.setTitle(mandara.item25, for: .normal)
            btn3.setTitle(mandara.item35, for: .normal)
            btn4.setTitle(mandara.item45, for: .normal)
            btn5.setTitle(mandara.item55, for: .normal)
            btn6.setTitle(mandara.item66, for: .normal)
            btn7.setTitle(mandara.item75, for: .normal)
            btn8.setTitle(mandara.item85, for: .normal)
            btn9.setTitle(mandara.item95, for: .normal)
               // ボタン背景色設定
            let rgba1 = UIColor(red: 255/255, green: 178/255, blue: 153/255, alpha: 1.0)
               btn1.backgroundColor = rgba1
            let rgba2 = UIColor(red: 255/255, green: 255/255, blue: 153/255, alpha: 1.0)
               btn2.backgroundColor = rgba2
            let rgba3 = UIColor(red: 178/255, green: 255/255, blue: 153/255, alpha: 1.0)
               btn3.backgroundColor = rgba3
            let rgba4 = UIColor(red: 255/255, green: 153/255, blue: 178/255, alpha: 1.0)
               btn4.backgroundColor = rgba4
            let rgba5 = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1.0)
               btn5.backgroundColor = rgba5
            let rgba6 = UIColor(red: 153/255, green: 255/255, blue: 204/255, alpha: 1.0)
               btn6.backgroundColor = rgba6
            let rgba7 = UIColor(red: 255/255, green: 153/255, blue: 255/255, alpha: 1.0)
               btn7.backgroundColor = rgba7
            let rgba8 = UIColor(red: 153/255, green: 153/255, blue: 255/255, alpha: 1.0)
               btn8.backgroundColor = rgba8
            let rgba9 = UIColor(red: 153/255, green: 229/255, blue: 255/255, alpha: 1.0)
               btn9.backgroundColor = rgba9
            
            
        } else if mandaraPosition < 70 {
            
            btn1.setTitle(mandara.item61, for: .normal)
            btn2.setTitle(mandara.item62, for: .normal)
            btn3.setTitle(mandara.item63, for: .normal)
            btn4.setTitle(mandara.item64, for: .normal)
            btn5.setTitle(mandara.item65, for: .normal)
            btn6.setTitle(mandara.item66, for: .normal)
            btn7.setTitle(mandara.item67, for: .normal)
            btn8.setTitle(mandara.item68, for: .normal)
            btn9.setTitle(mandara.item69, for: .normal)
               // ボタン背景色設定
            let rgba = UIColor(red: 153/255, green: 255/255, blue: 204/255, alpha: 1.0)
               btn5.backgroundColor = rgba
            
        } else if mandaraPosition < 80 {
            
            btn1.setTitle(mandara.item71, for: .normal)
            btn2.setTitle(mandara.item72, for: .normal)
            btn3.setTitle(mandara.item73, for: .normal)
            btn4.setTitle(mandara.item74, for: .normal)
            btn5.setTitle(mandara.item75, for: .normal)
            btn6.setTitle(mandara.item76, for: .normal)
            btn7.setTitle(mandara.item77, for: .normal)
            btn8.setTitle(mandara.item78, for: .normal)
            btn9.setTitle(mandara.item79, for: .normal)
               // ボタン背景色設定
            let rgba = UIColor(red: 255/255, green: 153/255, blue: 255/255, alpha: 1.0)
               btn5.backgroundColor = rgba
            
        } else if mandaraPosition < 90 {
            
            btn1.setTitle(mandara.item81, for: .normal)
            btn2.setTitle(mandara.item82, for: .normal)
            btn3.setTitle(mandara.item83, for: .normal)
            btn4.setTitle(mandara.item84, for: .normal)
            btn5.setTitle(mandara.item85, for: .normal)
            btn6.setTitle(mandara.item86, for: .normal)
            btn7.setTitle(mandara.item87, for: .normal)
            btn8.setTitle(mandara.item88, for: .normal)
            btn9.setTitle(mandara.item89, for: .normal)
               // ボタン背景色設定
            let rgba = UIColor(red: 153/255, green: 153/255, blue: 255/255, alpha: 1.0)
               btn5.backgroundColor = rgba
            
        } else if mandaraPosition < 100 {
            
            btn1.setTitle(mandara.item91, for: .normal)
            btn2.setTitle(mandara.item92, for: .normal)
            btn3.setTitle(mandara.item93, for: .normal)
            btn4.setTitle(mandara.item94, for: .normal)
            btn5.setTitle(mandara.item95, for: .normal)
            btn6.setTitle(mandara.item96, for: .normal)
            btn7.setTitle(mandara.item97, for: .normal)
            btn8.setTitle(mandara.item98, for: .normal)
            btn9.setTitle(mandara.item99, for: .normal)
               // ボタン背景色設定
            let rgba = UIColor(red: 153/255, green: 229/255, blue: 255/255, alpha: 1.0)
               btn5.backgroundColor = rgba
        }
        
        
    }
    
    
    }
