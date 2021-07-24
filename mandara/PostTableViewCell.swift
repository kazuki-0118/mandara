//
//  PostTableViewCell.swift
//  mandara
//
//  Created by kazuki on 2021/03/21.
//

import UIKit
import RealmSwift   // ←追加


class PostTableViewCell: UITableViewCell {
    
    let realm = try! Realm()  // ←追加
    var mandara: Mandara!   // 追加する
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var projectLabel: UILabel!
    @IBOutlet weak var compleationdateLabel: UILabel!
    
    @IBOutlet weak var stackall: UIStackView!
    
    @IBOutlet weak var view11: UILabel!
    @IBOutlet weak var view12: UILabel!
    @IBOutlet weak var view13: UILabel!
    @IBOutlet weak var view14: UILabel!
    @IBOutlet weak var view15: UILabel!
    @IBOutlet weak var view16: UILabel!
    @IBOutlet weak var view17: UILabel!
    @IBOutlet weak var view18: UILabel!
    @IBOutlet weak var view19: UILabel!
    
    @IBOutlet weak var view21: UILabel!
    @IBOutlet weak var view22: UILabel!
    @IBOutlet weak var view23: UILabel!
    @IBOutlet weak var view24: UILabel!
    @IBOutlet weak var view25: UILabel!
    @IBOutlet weak var view26: UILabel!
    @IBOutlet weak var view27: UILabel!
    @IBOutlet weak var view28: UILabel!
    @IBOutlet weak var view29: UILabel!
    
    @IBOutlet weak var view31: UILabel!
    @IBOutlet weak var view32: UILabel!
    @IBOutlet weak var view33: UILabel!
    @IBOutlet weak var view34: UILabel!
    @IBOutlet weak var view35: UILabel!
    @IBOutlet weak var view36: UILabel!
    @IBOutlet weak var view37: UILabel!
    @IBOutlet weak var view38: UILabel!
    @IBOutlet weak var view39: UILabel!
    
    @IBOutlet weak var view41: UILabel!
    @IBOutlet weak var view42: UILabel!
    @IBOutlet weak var view43: UILabel!
    @IBOutlet weak var view44: UILabel!
    @IBOutlet weak var view45: UILabel!
    @IBOutlet weak var view46: UILabel!
    @IBOutlet weak var view47: UILabel!
    @IBOutlet weak var view48: UILabel!
    @IBOutlet weak var view49: UILabel!
    
    @IBOutlet weak var view51: UILabel!
    @IBOutlet weak var view52: UILabel!
    @IBOutlet weak var view53: UILabel!
    @IBOutlet weak var view54: UILabel!
    @IBOutlet weak var view55: UILabel!
    @IBOutlet weak var view56: UILabel!
    @IBOutlet weak var view57: UILabel!
    @IBOutlet weak var view58: UILabel!
    @IBOutlet weak var view59: UILabel!
    
    @IBOutlet weak var view61: UILabel!
    @IBOutlet weak var view62: UILabel!
    @IBOutlet weak var view63: UILabel!
    @IBOutlet weak var view64: UILabel!
    @IBOutlet weak var view65: UILabel!
    @IBOutlet weak var view66: UILabel!
    @IBOutlet weak var view67: UILabel!
    @IBOutlet weak var view68: UILabel!
    @IBOutlet weak var view69: UILabel!
    
    @IBOutlet weak var view71: UILabel!
    @IBOutlet weak var view72: UILabel!
    @IBOutlet weak var view73: UILabel!
    @IBOutlet weak var view74: UILabel!
    @IBOutlet weak var view75: UILabel!
    @IBOutlet weak var view76: UILabel!
    @IBOutlet weak var view77: UILabel!
    @IBOutlet weak var view78: UILabel!
    @IBOutlet weak var view79: UILabel!
    
    @IBOutlet weak var view81: UILabel!
    @IBOutlet weak var view82: UILabel!
    @IBOutlet weak var view83: UILabel!
    @IBOutlet weak var view84: UILabel!
    @IBOutlet weak var view85: UILabel!
    @IBOutlet weak var view86: UILabel!
    @IBOutlet weak var view87: UILabel!
    @IBOutlet weak var view88: UILabel!
    @IBOutlet weak var view89: UILabel!
    
    @IBOutlet weak var view91: UILabel!
    @IBOutlet weak var view92: UILabel!
    @IBOutlet weak var view93: UILabel!
    @IBOutlet weak var view94: UILabel!
    @IBOutlet weak var view95: UILabel!
    @IBOutlet weak var view96: UILabel!
    @IBOutlet weak var view97: UILabel!
    @IBOutlet weak var view98: UILabel!
    @IBOutlet weak var view99: UILabel!
    
    
    
    var projectArray = try! Realm().objects(Mandara.self).sorted(byKeyPath: "date", ascending: true)  // ←追加
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        stackall.subviews.forEach { subview in
        guard let childStackView = subview as? UIStackView else {return}
        childStackView.subviews.forEach { subview2 in
            guard let labelall = subview2 as? UILabel else {return}
            labelall.layer.borderWidth = 0.8    // 枠線の幅
            labelall.layer.borderColor = UIColor.black.cgColor    // 枠線の色
            labelall.numberOfLines = 3
            labelall.adjustsFontSizeToFitWidth = true
            labelall.minimumScaleFactor = 0.5
            labelall.lineBreakMode = NSLineBreakMode.byCharWrapping
            labelall.font = UIFont(name: "Helvetica", size: 10.0)
        
        
      }
      }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // PostDataの内容をセルに表示
    func setPostData(_ mandara: Mandara) {
    
        // キャプションの表示
        self.categoryLabel.text = mandara.category
        self.projectLabel.text = mandara.projectName
        
        //date表示
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"

        let dateString:String = formatter.string(from: mandara.date)
        self.dateLabel.text = "作成日:\(dateString)"
        
        //completiondateの表示
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "yyyy-MM-dd"

        let dateString2:String = formatter.string(from: mandara.completiondate)
        self.compleationdateLabel.text = "完了予定日:\(dateString2)"
        
        
    //view
        self.view11.text = mandara.item11
        self.view12.text = mandara.item12
        self.view13.text = mandara.item13
        self.view14.text = mandara.item14
        self.view15.text = mandara.item15
        self.view16.text = mandara.item16
        self.view17.text = mandara.item17
        self.view18.text = mandara.item18
        self.view19.text = mandara.item19
        
        self.view21.text = mandara.item21
        self.view22.text = mandara.item22
        self.view23.text = mandara.item23
        self.view24.text = mandara.item24
        self.view25.text = mandara.item25
        self.view26.text = mandara.item26
        self.view27.text = mandara.item27
        self.view28.text = mandara.item28
        self.view29.text = mandara.item29
        
        self.view31.text = mandara.item31
        self.view32.text = mandara.item32
        self.view33.text = mandara.item33
        self.view34.text = mandara.item34
        self.view35.text = mandara.item35
        self.view36.text = mandara.item36
        self.view37.text = mandara.item37
        self.view38.text = mandara.item38
        self.view39.text = mandara.item39
        
        self.view41.text = mandara.item41
        self.view42.text = mandara.item42
        self.view43.text = mandara.item43
        self.view44.text = mandara.item44
        self.view45.text = mandara.item45
        self.view46.text = mandara.item46
        self.view47.text = mandara.item47
        self.view48.text = mandara.item48
        self.view49.text = mandara.item49
        
        self.view51.text = mandara.item15
        self.view52.text = mandara.item25
        self.view53.text = mandara.item35
        self.view54.text = mandara.item45
        self.view55.text = mandara.item55
        self.view56.text = mandara.item65
        self.view57.text = mandara.item75
        self.view58.text = mandara.item85
        self.view59.text = mandara.item95
        
        
        self.view61.text = mandara.item61
        self.view62.text = mandara.item62
        self.view63.text = mandara.item63
        self.view64.text = mandara.item64
        self.view65.text = mandara.item65
        self.view66.text = mandara.item66
        self.view67.text = mandara.item67
        self.view68.text = mandara.item68
        self.view69.text = mandara.item69
        
        self.view71.text = mandara.item71
        self.view72.text = mandara.item72
        self.view73.text = mandara.item73
        self.view74.text = mandara.item74
        self.view75.text = mandara.item75
        self.view76.text = mandara.item76
        self.view77.text = mandara.item77
        self.view78.text = mandara.item78
        self.view79.text = mandara.item79
        
        self.view81.text = mandara.item81
        self.view82.text = mandara.item82
        self.view83.text = mandara.item83
        self.view84.text = mandara.item84
        self.view85.text = mandara.item85
        self.view86.text = mandara.item86
        self.view87.text = mandara.item87
        self.view88.text = mandara.item88
        self.view89.text = mandara.item89
        
        self.view91.text = mandara.item91
        self.view92.text = mandara.item92
        self.view93.text = mandara.item93
        self.view94.text = mandara.item94
        self.view95.text = mandara.item95
        self.view96.text = mandara.item96
        self.view97.text = mandara.item97
        self.view98.text = mandara.item98
        self.view99.text = mandara.item99
    }
        
}
