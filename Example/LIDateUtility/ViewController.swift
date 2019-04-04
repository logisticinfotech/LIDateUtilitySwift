//
//  ViewController.swift
//  LIDateUtility
//
//  Created by vvdodiya on 04/04/2019.
//  Copyright (c) 2019 vvdodiya. All rights reserved.
//

import UIKit
import LIDateUtility

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var dateComponentTemp = DateComponents()
        dateComponentTemp.day = 12
        dateComponentTemp.month = 3
        dateComponentTemp.year = 2020
        let dateTemp = Calendar.current.date(from: dateComponentTemp)
        
        print("------GET------")
        print("Current Date: \(LIDateUtility.getCurrentDay())")
        print("Current Month: \(LIDateUtility.getCurrentMonth())")
        print("Current year: \(LIDateUtility.getCurrentYear())")
        
        print("\nDay of date: \(LIDateUtility.getDayFromDate(date: dateTemp!))")
        print("Month of date: \(LIDateUtility.getMonthFromDate(date: dateTemp!))")
        print("Year of date: \(LIDateUtility.getYearFromDate(date: dateTemp!))")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

