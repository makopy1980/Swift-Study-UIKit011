//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // MARK: - Private Fields
    
    private var picker: UIPickerView!
    private let values = ["その１", "その２", "その３", "その４"]

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        // PickerViewの設定
        self.setupPickerView()
    }
    
    /// PickerViewの設定
    private func setupPickerView() {
        
        let pickerRect = CGRect(x: 0.0,
                                y: 0.0,
                                width: self.view.bounds.width,
                                height: 180.0)
        
        picker = UIPickerView(frame: pickerRect)
        
        picker.dataSource = self
        picker.delegate = self
        
        self.view.addSubview(picker)
    }
    
    // MARK: - UIPickerViewDataSource & UIPickerViewDelegate
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return values[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row: \(row)")
        print("value: \(values[row])")
    }
}

