//
//  TabBarController.swift
//  CodingChallenge_iTunes
//
//  Created by yan feng on 2019/5/1.
//  Copyright © 2019 Yan feng. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        creatSubViewControllers()
        // Do any additional setup after loading the view.
    }
    

    func creatSubViewControllers(){
        let apps  = AppsTableViewController ()
        let item1 : UITabBarItem = UITabBarItem (title: "App", image: UIImage(named: "apps"), selectedImage: nil)
        apps.tabBarItem = item1
        
        let music = MusicTableViewController()
        let item2 : UITabBarItem = UITabBarItem (title: "Music", image: UIImage(named: "music"), selectedImage: nil)
        music.tabBarItem = item2
        
        let tabArray = [apps,music]
        self.viewControllers = tabArray
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
