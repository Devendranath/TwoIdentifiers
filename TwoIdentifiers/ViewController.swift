//
//  ViewController.swift
//  TwoIdentifiers
//
//  Created by apple on 07/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, UITableViewDataSourcePrefetching {
    func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        print(indexPaths)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            
        var identifier = "Cell1"
        if indexPath.section == 1 {
            identifier = "Cell2"
        }
            let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
            
            cell.textLabel?.text = "sdfsdfsdfs"
            return cell
    }
}

