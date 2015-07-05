//
//  ViewController.swift
//  listViewWithSwift
//
//  Created by Vinícius Montanheiro on 02/07/15.
//  Copyright (c) 2015 Vinícius Montanheiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    var pessoas = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        for i in 0...1000 {
            self.pessoas.append("Fulano \(i)")
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var celula = (tableView.dequeueReusableCellWithIdentifier("Celula", forIndexPath: indexPath) as! CustomTableViewCell)
        
        celula.descricao.text = pessoas[indexPath.row]
        
        return celula
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pessoas.count
    }

}

