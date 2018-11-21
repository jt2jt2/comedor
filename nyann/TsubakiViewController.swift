//
//  TsubakiViewController.swift
//  nyann
//
//  Created by 實森翔 on 2018/10/31.
//  Copyright © 2018年 hogehoge. All rights reserved.
//

import UIKit

class TsubakiViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    var MenuArray = [["らーめん","450"],["椿家らーめん","460"],["味玉","480"],["チャーシューラーメン","540"],["もやしラーメン","470"],["うま辛もやし","470"],["うま辛らーめん","500"],["のりラーメン","470"],["わかめラーメン","470"],["わかめコーン","500"],["Aセット(餃子3ｹ+小ライス)","200"],["Bセット(餃子3ｹ+チャーシュー小丼)","300"],["餃子","280"],["餃子ライス","380"]]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "tsubakiCell", for: indexPath)
        
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
        self.navigationItem.title = "椿家"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

