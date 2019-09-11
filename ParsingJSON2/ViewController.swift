//
//  ViewController.swift
//  ParsingJSON2
//
//  Created by Mohamed on 9/11/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let session = URLSession.shared
    
    let url = "https://jsonplaceholder.typicode.com/users"
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        guard let url = URL(string: url) else {return}
        
        session.dataTask(with: url) { (data, repsonse, error) in
        
            DispatchQueue.main.async {
                
                do{
                    if let data = data{
                        
                    let jsonData = try JSONDecoder().decode([Users].self, from: data)
                    
                    print(jsonData)
                    
                    }
                }catch {
                    
                    print(error.localizedDescription)
                }
            }
            
            
        }.resume()
        
    }


}

