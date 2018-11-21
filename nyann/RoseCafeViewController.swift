//
//  RoseCafeViewController.swift
//  nyann
//
//  Created by 實森翔 on 2018/10/24.
//  Copyright © 2018年 hogehoge. All rights reserved.
//

import UIKit

class RoseCafeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var RCcafe: UITableView!
    

    var cellArray = [["カレー","0"],["日替わりカレー","450"],["カレーライス","300"],["エッグチーズカレー","420"],["ローズカツカレー","450"],
    ["カフェ丼","0"],["日替わり丼","450"],["油淋鶏丼","480"],["タコライス","480"],["豚肉生姜焼き丼","460"],
    ["パスタ","0"],["日替わりパスタ","350"],["釜玉パスタ","300"],["チキンクリームパスタ","320"],["タラコスパゲティー","350"],
    ["サイド","0"],["サラダ","200"],["ポテトフライ","150"],
    ["デザート","0"],["ワッフル","270"],["チョコバナナワッフル","350"],["チョコサンデー","150"],["バナナパフェ","220"],["パンケーキ","200"],
    ["ストロベリーパンケーキ","270"]]
    
    override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.title = "ROSE cafe"
    // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return cellArray.count
    
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellValue: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "RCcell", for: indexPath)
    
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
