//
//  ViewController.swift
//  TestClosure
//
//  Created by WY on 2018/5/7.
//  Copyright © 2018年 HHCSZGD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(funcWhichNeedAParaFunc(str: "gggg", para: paraFunc  )) // gggg21
        print(funcWhichNeedAParaFunc(str: "xxxx", para: DDTest.testParaFunc))//xxxx23
        let result = funcWhichNeedAParaFunc(str: "ssss") { (paraStr) -> String in
            print(paraStr)//ssss2
            return paraStr + "4"
        }
        print(result)//ssss24
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func funcWhichNeedAParaFunc(str : String , para : (String)->String) -> String {
        return para(str + "2")
    }
    
    func paraFunc(string:String ) -> String {
        return string + "1"
    }
}

class DDTest {
    static func testParaFunc(string:String ) -> String {
        return string + "3"
    }
}

