//
//  RKViewController.swift
//  nyann
//
//  Created by 實森翔 on 2018/10/28.
//  Copyright © 2018年 hogehoge. All rights reserved.
//

import UIKit

class RKViewController:  UIViewController,UITableViewDelegate, UITableViewDataSource{
    var MenuArray = [["定食","0"],["チキン唐揚げ","420"],["チキンカツ","420"],["ハンバーグ・唐揚げ","500"],["スタミナ竜田揚げ","470"],["豚肉の生姜焼き","500"],["日替わりランチ","420"],
    ["カレー・ハヤシ","0"],["ジャンボチキンカツカレー","470"],["カレーライス","300"],["カツカレー","450"],["ハヤシライス","300"],["ロースカツハヤシ","450"],
    ["オムライス","0"],["オムライス","360"],["オムハヤシ","400"],
    ["丼","0"],["日替わり丼","450"],["日替わりピラフ・炒飯","300"],
    ["パスタ","0"],["ミートソース","300"],["カレースパ","300"],
    ["うどん・そば","0"],["ローズそば・うどん","270"],["ざるうどん・そば","260"],["冷やしうどん・そば","300"],["日替わりうどん・そば","360"],
    ["らーめん","0"],["ローズラーメン","270"],["チャーシュー麺","400"],["ざるラーメン","260"],["日替わり中華麺","380"],
    ["サイド","0"],["サラダ","120"],["鶏から揚げ(1個)","60"],["ライス","80"],["スープ","50"],["大盛り(ご飯・麺)","80"]]
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return MenuArray.count
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "RKcell", for: indexPath)
                
                // セルに表示する値を設定する
                cell.textLabel!.text = MenuArray[indexPath.row][0]
                if(MenuArray[indexPath.row][1]=="0"){
                    cell.detailTextLabel?.text = ""
                }else{
                    cell.detailTextLabel?.text = MenuArray[indexPath.row][1]+"yen"
                }
                return cell
            }
            
            override func viewDidLoad() {
                super.viewDidLoad()
                self.navigationItem.title = "Rose kitchen"
                // Do any additional setup after loading the view, typically from a nib.
            }
            
            override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
            }
            
}
