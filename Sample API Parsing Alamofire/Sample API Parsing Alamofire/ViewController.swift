//
//  ViewController.swift
//  Sample API Parsing Alamofire
//
//  Created by Sreejith np on 03/07/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var proudctNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var proudctDiscountLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Api parsing function is Called Here
        loadApiData()
    }
    // Load API Function
    func loadApiData(){
        
        AF.request("https://dummyjson.com/products").responseDecodable(of: ProductDetails.self) { [self] response in
            switch response.result {
                
            case .success(let proudctData):
                
                proudctNameLabel.text =  "Product name: \(proudctData.products[0].title)"
                productPriceLabel.text =  "Price:  \(String(proudctData.products[0].price))  $"
                proudctDiscountLabel.text =  "Discount:  \(String(proudctData.products[0].discountPercentage))  %"
                productDescriptionLabel.text =  "Description: \(proudctData.products[0].description)"
                
            case .failure(let productFetcherror):
                
                print(productFetcherror.localizedDescription)
            }
        }
    }
}

