//
//  TsuruViewController.swift
//  nyann
//
//  Created by 實森翔 on 2018/10/31.
//  Copyright © 2018年 hogehoge. All rights reserved.
//

import UIKit

class TsuruViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    var MenuArray = [["麺類","0"],["かけうどん 並(温・冷)","290"],["かけうどん 大盛(温・冷)","290"],["釜玉(温)","320"],["カレーうどん 並(温)","380"],["カレーうどん 大盛(温)","480"],["チーズカレーうどん(温)","450"],["温玉めんたい 並(温)","380"],["温玉めんたい 大盛(温)","390"],["肉うどん(温・冷)","380"],["ざる蕎麦","290"],["ツル特セット","500"],
                     ["サイドメニュー","0"],["追いめし","80"],["おにぎり各種","100"],["天ぷら各種","70"],["好きな天ぷら+ごはん","170"]]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "tsuruCell", for: indexPath)
        
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
        self.navigationItem.title = "つるつる"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

