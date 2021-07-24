//
//  Temp.swift
//  mandara
//
//  Created by kazuki on 2021/03/20.
//

import RealmSwift

class Temp: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0
    // タイトル
    @objc dynamic var text1 = ""
    @objc dynamic var text2 = ""
    @objc dynamic var text3 = ""
    @objc dynamic var text4 = ""
    @objc dynamic var text5 = ""
    @objc dynamic var text6 = ""
    @objc dynamic var text7 = ""
    @objc dynamic var text8 = ""
    @objc dynamic var text9 = ""
    
    @objc dynamic var text11 = ""
    @objc dynamic var text12 = ""
    @objc dynamic var text13 = ""
    @objc dynamic var text14 = ""
    @objc dynamic var text15 = ""
    @objc dynamic var text16 = ""
    @objc dynamic var text17 = ""
    @objc dynamic var text18 = ""
    @objc dynamic var text19 = ""
    
    @objc dynamic var text21 = ""
    @objc dynamic var text22 = ""
    @objc dynamic var text23 = ""
    @objc dynamic var text24 = ""
    @objc dynamic var text25 = ""
    @objc dynamic var text26 = ""
    @objc dynamic var text27 = ""
    @objc dynamic var text28 = ""
    @objc dynamic var text29 = ""
    // 日時
    @objc dynamic var date = Date()
    
    // id をプライマリーキーとして設定
     override static func primaryKey() -> String? {
         return "id"
     }
}
