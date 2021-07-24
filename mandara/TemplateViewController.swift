//
//  TemplateViewController.swift
//  mandara
//
//  Created by kazuki on 2021/02/28.
//

import UIKit
import RealmSwift

class TemplateViewController: UIViewController {
    
    let realm = try! Realm()    // 追加する
    var mandara: Mandara!   // 追加する
    var temp: Temp!
    var templateArray = try! Realm().objects(Temp.self).sorted(byKeyPath: "date", ascending: true)  // ←追加
    
    //テンプレート
    @IBOutlet weak var stacktemplate1: UIStackView!
    @IBOutlet weak var stacktemplate2: UIStackView!
    @IBOutlet weak var stacktemplate3: UIStackView!
    
    //テンプレートテキストフィールド
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var text5: UITextField!
    @IBOutlet weak var text6: UITextField!
    @IBOutlet weak var text7: UITextField!
    @IBOutlet weak var text8: UITextField!
    @IBOutlet weak var text9: UITextField!
    
    @IBOutlet weak var text11: UITextField!
    @IBOutlet weak var text12: UITextField!
    @IBOutlet weak var text13: UITextField!
    @IBOutlet weak var text14: UITextField!
    @IBOutlet weak var text15: UITextField!
    @IBOutlet weak var text16: UITextField!
    @IBOutlet weak var text17: UITextField!
    @IBOutlet weak var text18: UITextField!
    @IBOutlet weak var text19: UITextField!
    
    @IBOutlet weak var text21: UITextField!
    @IBOutlet weak var text22: UITextField!
    @IBOutlet weak var text23: UITextField!
    @IBOutlet weak var text24: UITextField!
    @IBOutlet weak var text25: UITextField!
    @IBOutlet weak var text26: UITextField!
    @IBOutlet weak var text27: UITextField!
    @IBOutlet weak var text28: UITextField!
    @IBOutlet weak var text29: UITextField!
    
    
    
    //updateボタン
    @IBOutlet weak var updatebutton1: UIButton!
    @IBOutlet weak var updatebutton2: UIButton!
    @IBOutlet weak var updatebutton3: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stacktemplate1.subviews.forEach { subview in
        guard let childStackView = subview as? UIStackView else {return}
        childStackView.subviews.forEach { subview2 in
            guard let template1 = subview2 as? UITextField else {return}
            
            print(template1.tag)
        }
        }
        
        print(templateArray)
        
        let allMandara = realm.objects(Temp.self)
        if allMandara.count != 0 {
            text1.text = self.templateArray[0].text1
            text2.text = self.templateArray[0].text2
            text3.text = self.templateArray[0].text3
            text4.text = self.templateArray[0].text4
            text5.text = self.templateArray[0].text5
            text6.text = self.templateArray[0].text6
            text7.text = self.templateArray[0].text7
            text8.text = self.templateArray[0].text8
            text9.text = self.templateArray[0].text9
            text11.text = self.templateArray[0].text11
            text12.text = self.templateArray[0].text12
            text13.text = self.templateArray[0].text13
            text14.text = self.templateArray[0].text14
            text15.text = self.templateArray[0].text15
            text16.text = self.templateArray[0].text16
            text17.text = self.templateArray[0].text17
            text18.text = self.templateArray[0].text18
            text19.text = self.templateArray[0].text19
            text21.text = self.templateArray[0].text21
            text22.text = self.templateArray[0].text22
            text23.text = self.templateArray[0].text23
            text24.text = self.templateArray[0].text24
            text25.text = self.templateArray[0].text25
            text26.text = self.templateArray[0].text26
            text27.text = self.templateArray[0].text27
            text28.text = self.templateArray[0].text28
            text29.text = self.templateArray[0].text29
        }

        
    }
        
            
        // Do any additional setup after loading the view.
    @IBAction func update1(_ sender: Any) {
  
        let allTemp = realm.objects(Temp.self)
        if allTemp.count == 0 {
            
        try! self.realm.write {
        let temp = Temp()
         temp.id = 0
         temp.text1 = text1.text!
         temp.text2 = text2.text!
         temp.text3 = text3.text!
         temp.text4 = text4.text!
         temp.text5 = text5.text!
         temp.text6 = text6.text!
         temp.text7 = text7.text!
         temp.text8 = text8.text!
         temp.text9 = text9.text!
         
         self.realm.add(temp, update: .modified)
        }
        }else{
            try! self.realm.write {
                self.templateArray[0].text1 = text1.text!
                self.templateArray[0].text2 = text2.text!
                self.templateArray[0].text3 = text3.text!
                self.templateArray[0].text4 = text4.text!
                self.templateArray[0].text5 = text5.text!
                self.templateArray[0].text6 = text6.text!
                self.templateArray[0].text7 = text7.text!
                self.templateArray[0].text8 = text8.text!
                self.templateArray[0].text9 = text9.text!

        }
    }
    }
    @IBAction func update2(_ sender: Any) {
        
        let allTemp = realm.objects(Temp.self)
        if allTemp.count == 0 {
            
        try! self.realm.write {
        let temp = Temp()
         temp.id = 0
         temp.text11 = text11.text!
         temp.text12 = text12.text!
         temp.text13 = text13.text!
         temp.text14 = text14.text!
         temp.text15 = text15.text!
         temp.text16 = text16.text!
         temp.text17 = text17.text!
         temp.text18 = text18.text!
         temp.text19 = text19.text!
         
         self.realm.add(temp, update: .modified)
        }
        }else{
            let temp = Temp()
            
            temp.id = allTemp.max(ofProperty:"id")!+1
            
            try! self.realm.write {
                self.templateArray[0].text11 = text11.text!
                self.templateArray[0].text12 = text12.text!
                self.templateArray[0].text13 = text13.text!
                self.templateArray[0].text14 = text14.text!
                self.templateArray[0].text15 = text15.text!
                self.templateArray[0].text16 = text16.text!
                self.templateArray[0].text17 = text17.text!
                self.templateArray[0].text18 = text18.text!
                self.templateArray[0].text19 = text19.text!
        }
    }
    }
    @IBAction func update3(_ sender: Any) {
        
        let allTemp = realm.objects(Temp.self)
        if allTemp.count == 0 {
            
        try! self.realm.write {
        let temp = Temp()
         temp.id = 0
         temp.text21 = text21.text!
         temp.text22 = text22.text!
         temp.text23 = text23.text!
         temp.text24 = text24.text!
         temp.text25 = text25.text!
         temp.text26 = text26.text!
         temp.text27 = text27.text!
         temp.text28 = text28.text!
         temp.text29 = text29.text!
         
         self.realm.add(temp, update: .modified)
        }
        }else{
            let temp = Temp()
            
            temp.id = allTemp.max(ofProperty:"id")!+1
            
            try! self.realm.write {
                self.templateArray[0].text21 = text21.text!
                self.templateArray[0].text22 = text22.text!
                self.templateArray[0].text23 = text23.text!
                self.templateArray[0].text24 = text24.text!
                self.templateArray[0].text25 = text25.text!
                self.templateArray[0].text26 = text26.text!
                self.templateArray[0].text27 = text27.text!
                self.templateArray[0].text28 = text28.text!
                self.templateArray[0].text29 = text29.text!
        }
    }
    }
        
    @IBAction func trashbutton(_ sender: Any) {
        let allTemp = realm.objects(Temp.self)
        if allTemp.count != 0 {
            text1.text = ""
            text2.text = ""
            text3.text = ""
            text4.text = ""
            text5.text = ""
            text6.text = ""
            text7.text = ""
            text8.text = ""
            text9.text = ""
            
            try! self.realm.write {
                self.templateArray[0].text1 = text1.text!
                self.templateArray[0].text2 = text2.text!
                self.templateArray[0].text3 = text3.text!
                self.templateArray[0].text4 = text4.text!
                self.templateArray[0].text5 = text5.text!
                self.templateArray[0].text6 = text6.text!
                self.templateArray[0].text7 = text7.text!
                self.templateArray[0].text8 = text8.text!
                self.templateArray[0].text9 = text9.text!
        }
    }
    }
        
    @IBAction func trashbutton2(_ sender: Any) {
        let allTemp = realm.objects(Temp.self)
        if allTemp.count != 0 {
            text11.text = ""
            text12.text = ""
            text13.text = ""
            text14.text = ""
            text15.text = ""
            text16.text = ""
            text17.text = ""
            text18.text = ""
            text19.text = ""
            
            try! self.realm.write {
                self.templateArray[0].text11 = text11.text!
                self.templateArray[0].text12 = text12.text!
                self.templateArray[0].text13 = text13.text!
                self.templateArray[0].text14 = text14.text!
                self.templateArray[0].text15 = text15.text!
                self.templateArray[0].text16 = text16.text!
                self.templateArray[0].text17 = text17.text!
                self.templateArray[0].text18 = text18.text!
                self.templateArray[0].text19 = text19.text!
        }
    }
    }
    @IBAction func trashbutton3(_ sender: Any) {
        let allTemp = realm.objects(Temp.self)
        if allTemp.count != 0 {
            text21.text = ""
            text22.text = ""
            text23.text = ""
            text24.text = ""
            text25.text = ""
            text26.text = ""
            text27.text = ""
            text28.text = ""
            text29.text = ""
            
            try! self.realm.write {
                self.templateArray[0].text21 = text21.text!
                self.templateArray[0].text22 = text22.text!
                self.templateArray[0].text23 = text23.text!
                self.templateArray[0].text24 = text24.text!
                self.templateArray[0].text25 = text25.text!
                self.templateArray[0].text26 = text26.text!
                self.templateArray[0].text27 = text27.text!
                self.templateArray[0].text28 = text28.text!
                self.templateArray[0].text29 = text29.text!
        }
    }
    }
    
    
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
