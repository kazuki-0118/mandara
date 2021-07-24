//
//  projectInputViewController.swift
//  mandara
//
//  Created by kazuki on 2021/03/06.
//

import UIKit
import RealmSwift


class projectInputViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var categoryTextField: UITextField!
    @IBOutlet weak var projectNameTextField: UITextField!
    @IBOutlet weak var projectdate: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var templateoutput: UIStackView!
    @IBOutlet weak var templatechange: UITextField!
    var pickerView: UIPickerView = UIPickerView()
    @IBOutlet weak var label1: UILabel! 
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    
    let list = ["", "テンプレート1", "テンプレート2", "テンプレート3", ]
    let realm = try! Realm()    // 追加する
    var mandara: Mandara!   // 追加する
    var temp: Temp!
    var templateArray = try! Realm().objects(Temp.self).sorted(byKeyPath: "date", ascending: true)  // ←追加

    override func viewDidLoad() {
        super.viewDidLoad()
    
        print("TEST=>\(templateArray)")
 
        //日付を表示する。
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"

        let dateString:String = formatter.string(from: mandara.date)
        projectdate.text = dateString
        
        // 背景をタップしたらdismissKeyboardメソッドを呼ぶように設定する
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)

        categoryTextField.text = mandara.category
        projectNameTextField.text = mandara.projectName
        datePicker.date = mandara.completiondate
        
        //テンプレート選択
        pickerView.delegate = self
        pickerView.dataSource = self
       // pickerView.showsSelectionIndicator = true

        let toolbar = UIToolbar(frame: CGRectMake(0, 0, 0, 35))
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(projectInputViewController.done))
        let cancelItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(projectInputViewController.cancel))
        toolbar.setItems([cancelItem, doneItem], animated: true)

        self.templatechange.inputView = pickerView
        self.templatechange.inputAccessoryView = toolbar
        
        //labelの表示方法
        templateoutput.subviews.forEach { subview in
        guard let childStackView = subview as? UIStackView else {return}
        childStackView.subviews.forEach { subview2 in
            guard let allLabel = subview2 as? UILabel else {return}
            print(allLabel.text!)
        allLabel.lineBreakMode = .byWordWrapping
        allLabel.numberOfLines = 3
        }
        }
        
        
    }
    // 追加する
    override func viewWillDisappear(_ animated: Bool) {
       
        
        try! realm.write {
            self.mandara.category = self.categoryTextField.text!
            self.mandara.projectName = self.projectNameTextField.text!
            self.realm.add(self.mandara, update: .modified)
            self.mandara.completiondate = self.datePicker.date
        }

        super.viewWillDisappear(animated)
    }
    

    @objc func dismissKeyboard(){
        // キーボードを閉じる
        view.endEditing(true)

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.templatechange.text = list[row]
    }

    @objc func cancel() {
        self.templatechange.text = ""
        self.templatechange.endEditing(true)
    }

    @objc func done() {
        self.templatechange.endEditing(true)
        
        if templatechange.text == "テンプレート1" {
        print("テンプレート1が選択されました。")
            let allMandara = realm.objects(Temp.self)
            if allMandara.count != 0 {
            label1.text = templateArray[0].text1
            label2.text = templateArray[0].text2
            label3.text = templateArray[0].text3
            label4.text = templateArray[0].text4
            label5.text = templateArray[0].text5
            label6.text = templateArray[0].text6
            label7.text = templateArray[0].text7
            label8.text = templateArray[0].text8
            label9.text = templateArray[0].text9
            try! realm.write {
                self.mandara.item15 = label1.text!
                self.mandara.item25 = label2.text!
                self.mandara.item35 = label3.text!
                self.mandara.item45 = label4.text!
                self.mandara.item55 = label5.text!
                self.mandara.item65 = label6.text!
                self.mandara.item75 = label7.text!
                self.mandara.item85 = label8.text!
                self.mandara.item95 = label9.text!
            }
            }
            
        }else if templatechange.text == "テンプレート2" {
        print("テンプレート2が選択されました。")
            let allMandara = realm.objects(Temp.self)
            if allMandara.count != 0 {
            label1.text = templateArray[0].text11
            label2.text = templateArray[0].text12
            label3.text = templateArray[0].text13
            label4.text = templateArray[0].text14
            label5.text = templateArray[0].text15
            label6.text = templateArray[0].text16
            label7.text = templateArray[0].text17
            label8.text = templateArray[0].text18
            label9.text = templateArray[0].text19
            try! realm.write {
                self.mandara.item15 = label1.text!
                self.mandara.item25 = label2.text!
                self.mandara.item35 = label3.text!
                self.mandara.item45 = label4.text!
                self.mandara.item55 = label5.text!
                self.mandara.item65 = label6.text!
                self.mandara.item75 = label7.text!
                self.mandara.item85 = label8.text!
                self.mandara.item95 = label9.text!
            }
            }
        }else if templatechange.text == "テンプレート3" {
        print("テンプレート3が選択されました。")
            let allMandara = realm.objects(Temp.self)
            if allMandara.count != 0 {
            label1.text = templateArray[0].text21
            label2.text = templateArray[0].text22
            label3.text = templateArray[0].text23
            label4.text = templateArray[0].text24
            label5.text = templateArray[0].text25
            label6.text = templateArray[0].text26
            label7.text = templateArray[0].text27
            label8.text = templateArray[0].text28
            label9.text = templateArray[0].text29
            try! realm.write {
                self.mandara.item15 = label1.text!
                self.mandara.item25 = label2.text!
                self.mandara.item35 = label3.text!
                self.mandara.item45 = label4.text!
                self.mandara.item55 = label5.text!
                self.mandara.item65 = label6.text!
                self.mandara.item75 = label7.text!
                self.mandara.item85 = label8.text!
                self.mandara.item95 = label9.text!
            }
            }
        }else{
            label1.text = ""
            label2.text = ""
            label3.text = ""
            label4.text = ""
            label5.text = ""
            label6.text = ""
            label7.text = ""
            label8.text = ""
            label9.text = ""
            try! realm.write {
                self.mandara.item15 = label1.text!
                self.mandara.item25 = label2.text!
                self.mandara.item35 = label3.text!
                self.mandara.item45 = label4.text!
                self.mandara.item55 = label5.text!
                self.mandara.item65 = label6.text!
                self.mandara.item75 = label7.text!
                self.mandara.item85 = label8.text!
                self.mandara.item95 = label9.text!
        }
        
        }
    }
    
    
    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
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

