//
//  ViewController.swift
//  UIPickerView
//
//  Created by Mamadou Kaba on 6/16/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    //MARK: - Properties
    var pickerView: UIPickerView!
    var currentDataSource = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    var newDataSource = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
    
    
    //MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView = UIPickerView()
        pickerView.center = view.center
        view.addSubview(pickerView)
        pickerView.dataSource = self
        pickerView.delegate = self
    }
    
    //UIPickerViewDataSource
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        if pickerView == self.pickerView {
            return 1
        }
        return 0
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.pickerView {
            return currentDataSource.count
        }
        return 0
    }
    
    //UIPickerDelegate
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(currentDataSource[row])"
    }

    @IBAction func pickerViewValueSelected(sender: AnyObject) {
        let selectedRow = pickerView.selectedRowInComponent(0)
        print(currentDataSource[selectedRow])
    }

    @IBAction func changeDataSource(sender: AnyObject) {
        currentDataSource = newDataSource
        pickerView.reloadAllComponents()
    }



}

