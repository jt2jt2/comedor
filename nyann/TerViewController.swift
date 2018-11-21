//
//  TerViewController.swift
//  nyann
//
//  Created by 實森翔 on 2018/10/28.
//  Copyright © 2018年 hogehoge. All rights reserved.
//

import UIKit

class TerViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    var MenuArray = [["あいがけ","0"],["1あいがけ","420"],["1あいがけ(ライス大盛り)","420"],["2あいがけ","470"],["2あいがけ(ライス大盛り)","470"],["3あいがけ","520"],["3あいがけ(ライス大盛り)","520"],
    ["麺","0"],["日替わり麺","370"],["日替わり麺(麺大盛り)","420"],["週替わり麺","370"],["週替わり麺(麺大盛り)","420"]]
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return MenuArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Menucell", for: indexPath)
            
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
            self.navigationItem.title = "802-A TERRACE"
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
}

