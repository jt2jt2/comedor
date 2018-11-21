//
//  McViewController.swift
//  nyann
//
//  Created by 實森翔 on 2018/10/24.
//  Copyright © 2018年 hogehoge. All rights reserved.
//

import UIKit

class McViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var McTable: UITableView!
    
    var cellArray = [
        ["セット","0"],["ビッグマックセット","690"], ["チキンフィレオセット","650"], ["ベーコンレタスバーガーセット","650"],["エグチセット","500"],["マクポセット","500"],["チキチーセット","500"],["えびフィレオセット","690"],["てりやきチキンフィレオセット","660"],["ダブルチーズバーガーセット","620"],["フィレオフィッシュセット","620"],["グランクラブハウスセット","790"],["グランベーコンチーズバーガーセット","620"],["グランガーリックペッパーセット","620"],
                     ["ランチ（10:30~14:00）","0"],["ビッグマックコンビ","450"], ["チキンフィレオコンビ","450"],["てりやきチキンフィレオセット","550"],["ダブルチーズバーガーセット","550"],["フィレオフィッシュセット","550"],["てりやきマックバーガーセット","550"],
                     ["バーガー単品","0"],["ビッグマック","390"], ["チキンフィレオ","350"], ["ベーコンレタスバーガー","350"],["エグチ","200"],["マクポ","200"],["チキチー","200"],["えびフィレオ","390"],["てりやきチキンフィレオ","360"],["ダブルチーズバーガー","320"],["フィレオフィッシュ","320"],["グランクラブハウス","490"],["グランベーコンチーズバーガー","320"],["グランバガーリックペッパー","320"],["ハンバーガー","100"],["チキンクリスプ","100"],["チーズバーガー","130"],["サイド単品","0"],["マックフライポテト(S)","150"],["マックフライポテト(M)","270"],["マックフライポテト(L)","320"],["チキンマックナゲット(BBQ:MST)","200"],["サイドサラダ(ゴマ:たまねぎ)","280"],["シャカチキ(チーズ:ペッパー)","150"],["アップルパイ","100"],["ドリンク単品","0"],["ドリンクM","220"],["プレミアムローストコーヒー","150"],["ホットカフェラテ(S)","150"],["ホットカフェラテ(M)","200"],
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "McDonald's"
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellArray.count
        
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellValue: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Mccell", for: indexPath)
        
        // セルに表示する値を設定する
        cellValue.textLabel!.text = cellArray[indexPath.row][0]
        if(cellArray[indexPath.row][1] != "0"){
            cellValue.detailTextLabel?.text = cellArray[indexPath.row][1]+"yen"
        }else{
            cellValue.detailTextLabel?.text = ""
        }
        
    
        return cellValue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
