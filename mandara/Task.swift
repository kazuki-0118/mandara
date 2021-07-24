//
//  Task.swift
//  mandara
//
//  Created by kazuki on 2021/02/28.
//

import RealmSwift

class Mandara: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0

    // タイトル
    @objc dynamic var projectName = "ProjectName"
    // カテゴリー
    @objc dynamic var category = "Category"
    // 内容
    @objc dynamic var contents = ""
    // 内容
    @objc dynamic var item = ""
    @objc dynamic var item11 = ""
    @objc dynamic var item12 = ""
    @objc dynamic var item13 = ""
    @objc dynamic var item14 = ""
    @objc dynamic var item15 = ""
    @objc dynamic var item16 = ""
    @objc dynamic var item17 = ""
    @objc dynamic var item18 = ""
    @objc dynamic var item19 = ""
    @objc dynamic var item21 = ""
    @objc dynamic var item22 = ""
    @objc dynamic var item23 = ""
    @objc dynamic var item24 = ""
    @objc dynamic var item25 = ""
    @objc dynamic var item26 = ""
    @objc dynamic var item27 = ""
    @objc dynamic var item28 = ""
    @objc dynamic var item29 = ""
    @objc dynamic var item31 = ""
    @objc dynamic var item32 = ""
    @objc dynamic var item33 = ""
    @objc dynamic var item34 = ""
    @objc dynamic var item35 = ""
    @objc dynamic var item36 = ""
    @objc dynamic var item37 = ""
    @objc dynamic var item38 = ""
    @objc dynamic var item39 = ""
    @objc dynamic var item41 = ""
    @objc dynamic var item42 = ""
    @objc dynamic var item43 = ""
    @objc dynamic var item44 = ""
    @objc dynamic var item45 = ""
    @objc dynamic var item46 = ""
    @objc dynamic var item47 = ""
    @objc dynamic var item48 = ""
    @objc dynamic var item49 = ""
//    @objc dynamic var item51 = ""
//    @objc dynamic var item52 = ""
//    @objc dynamic var item53 = ""
//    @objc dynamic var item54 = ""
    @objc dynamic var item55 = ""
//    @objc dynamic var item56 = ""
//    @objc dynamic var item57 = ""
//    @objc dynamic var item58 = ""
//    @objc dynamic var item59 = ""
    @objc dynamic var item61 = ""
    @objc dynamic var item62 = ""
    @objc dynamic var item63 = ""
    @objc dynamic var item64 = ""
    @objc dynamic var item65 = ""
    @objc dynamic var item66 = ""
    @objc dynamic var item67 = ""
    @objc dynamic var item68 = ""
    @objc dynamic var item69 = ""
    @objc dynamic var item71 = ""
    @objc dynamic var item72 = ""
    @objc dynamic var item73 = ""
    @objc dynamic var item74 = ""
    @objc dynamic var item75 = ""
    @objc dynamic var item76 = ""
    @objc dynamic var item77 = ""
    @objc dynamic var item78 = ""
    @objc dynamic var item79 = ""
    @objc dynamic var item81 = ""
    @objc dynamic var item82 = ""
    @objc dynamic var item83 = ""
    @objc dynamic var item84 = ""
    @objc dynamic var item85 = ""
    @objc dynamic var item86 = ""
    @objc dynamic var item87 = ""
    @objc dynamic var item88 = ""
    @objc dynamic var item89 = ""
    @objc dynamic var item91 = ""
    @objc dynamic var item92 = ""
    @objc dynamic var item93 = ""
    @objc dynamic var item94 = ""
    @objc dynamic var item95 = ""
    @objc dynamic var item96 = ""
    @objc dynamic var item97 = ""
    @objc dynamic var item98 = ""
    @objc dynamic var item99 = ""
    
    //テンプレートテキスト
    @objc dynamic var text1 = ""
    
    
    // 日時
    @objc dynamic var date = Date()
    // 完了予定日
    @objc dynamic var completiondate = Date()

    // id をプライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }

        
    
}
