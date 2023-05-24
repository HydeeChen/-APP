//
//  ViewController.swift
//  購物APP
//
//  Created by Hydee Chen on 2023/5/5.
//

import UIKit

class ViewController: UIViewController {
    //設定看板娘Outlet
    @IBOutlet weak var barOutlet: UIImageView!
    
    //設定看板娘文字敘述Outlet
    @IBOutlet weak var barTextOutlet: UILabel!
    
    //設定小圓點outlet
    @IBOutlet weak var pageControlOutlet: UIPageControl!
    
    //設定柴犬價格outlet
    @IBOutlet weak var shibaPrice: UILabel!
    
    //設定柴犬數量outlet
    @IBOutlet weak var shibaQOutlet: UILabel!
    
    //設定柴犬數量增減的UIstepper
    @IBOutlet weak var shibaStepper: UIStepper!
    
    //設定柴犬起始數量為0
    var shibaQ:Int = 0
    
    //設定柴犬UIStepper功能
    @IBAction func shibaQAction(_ sender: UIStepper) {
        //Stepper的item增減
        shibaQ = Int(shibaStepper.value)
        
        //數量轉為字串Q顯示
        shibaQOutlet.text = String(shibaQ)
        let shibaP = Int(shibaPrice.text!)!
        let SaP = Int(SaPrice.text!)!
        let catP = Int(catPriceOutlet.text!)!

        //總價格計算
        let totalPrice = (shibaQ * shibaP) + (SaQnumber * SaP) + (cat * catP)
        
        //總金額字串
        amount.text = "\(totalPrice)"
        
    }
    
    //設定薩摩耶價格outlet
    @IBOutlet weak var SaPrice: UILabel!
    
    //設定薩摩耶數量outlet
    @IBOutlet weak var SaQ: UILabel!
    
    //設定薩摩耶數量增減Stepper
    @IBOutlet weak var SaStepper: UIStepper!
    
    //薩摩耶起始數量為0
    var SaQnumber:Int = 0
    
    //設定薩摩耶UIStepper功能
    @IBAction func SaUIStepper(_ sender: UIStepper) {
        //Stepper的item增減
        SaQnumber = Int(SaStepper.value)
        
        //數量轉為字串Q顯示
        SaQ.text = String(SaQnumber)
        
        //數量轉為字串Q顯示
        let shibaP = Int(shibaPrice.text!)!
        let SaP = Int(SaPrice.text!)!
        let catP = Int(catPriceOutlet.text!)!

        //總價格計算
        let totalPrice = (shibaQ * shibaP) + (SaQnumber * SaP) + (cat * catP)
        
        //總金額字串
        amount.text = "\(totalPrice)"
    }
    
    //設定賓士貓價格UILable
    @IBOutlet weak var catPriceOutlet: UILabel!
    
    //設定賓士貓數量
    @IBOutlet weak var catQLable: UILabel!
    
    //設定賓士貓UIStepper
    @IBOutlet weak var catStepper: UIStepper!
    
    //賓士貓數量，初始值為0
    var cat:Int = 0
   
    //設定賓士貓UIStepper功能
    @IBAction func catStepper(_ sender: UIStepper) {
        
        
        //Stepper的Item增減
        cat = Int(catStepper.value)
        
        //數量轉為字串顯示
        catQLable.text = String(cat)
        
        //數量轉為字串Q顯示
        let shibaP = Int(shibaPrice.text!)!
        let SaP = Int(SaPrice.text!)!
        let catP = Int(catPriceOutlet.text!)!

        //總價格計算
        let totalPrice = (shibaQ * shibaP) + (SaQnumber * SaP) + (cat * catP)
        
        //總金額字串
        amount.text = "\(totalPrice)"
    }
    
    //設定清空鈕
    @IBAction func clear(_ sender: Any) {
        //Stepper清空
        shibaStepper.value = 0
        SaStepper.value = 0
        catStepper.value = 0
        
        //數量字串清空
        shibaQOutlet.text = "0"
        SaQ.text = "0"
        catQLable.text = "0"
        
        //總金額清空
        amount.text = "0"
    }
    
    
    //設定看板娘圖片array
    let pictures = ["貓看板", "狗看板", "幼犬看板"]
    
    //設定看板娘圖片敘述array
    let eventWording = ["包套吸🐱五折起！", "香香狗狗味六折起", "cute puppy time❤️"]
    
    //設定index
    var index = 0
    
    //設定小圓點action
    @IBAction func pageControlAction(_ sender: Any) {
        index = pageControlOutlet.currentPage
        barOutlet.image = UIImage(named: pictures[index])
        barTextOutlet.text = eventWording[index]
    }
    
    //設定下一頁
    @IBAction func next(_ sender: Any) {
        index = ( index + 1 ) % pictures.count
        barOutlet.image = UIImage(named: pictures[index])
        barTextOutlet.text = eventWording[index]
        pageControlOutlet.currentPage = index
    }
    
    //設定上一頁
    @IBAction func pre(_ sender: Any) {
        index = ( index + pictures.count - 1 ) % pictures.count
        barOutlet.image = UIImage(named: pictures[index])
        barTextOutlet.text = eventWording[index]
        pageControlOutlet.currentPage = index
    }
    
    //設定總金額
    @IBOutlet weak var amount: UILabel!
    
    func repeatData (index:Int){
        barOutlet.image = UIImage(named: pictures[index])
        barTextOutlet.text = eventWording[index]
        pageControlOutlet.currentPage = index
    }
    
    //製作timer
    private var timer:Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //製作timer功能（待補）
       /* repeatData(index: 0)
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in self.repeatData(index: self.pageControlOutlet.currentPage + self.pageControlOutlet.numberOfPages + 1 ) % self.pageControlOutlet.numberOfPages})
        */
        
        
        //價格字串設定
        shibaPrice.text = "30"
        SaPrice.text = "40"
        catPriceOutlet.text = "35"
        
        

    }

}

