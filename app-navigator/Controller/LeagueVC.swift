//
//  LeagueVC.swift
//  app-navigator
//
//  Created by Jeff Jeong on 2019. 6. 27..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import UIKit
// 리그 뷰 컨트롤러 클래스 
class LeagueVC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        // 3초 뒤에 selector 안에 있는 메소드 실행
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(skillVCSegue), userInfo: nil, repeats: false)
        
    }
    
    
    // next 버튼이 탭 되었을때
    @IBAction func onNextTapped(_ sender: Any) {
        // self 가 안드로이드에서 this 와 같은것
        // startActivity(new intent(), this);
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
   
    @objc func skillVCSegue(){
        // self 가 안드로이드에서 this 와 같은것
        // startActivity(new intent(), this);
        performSegue(withIdentifier: "skillVCSegue", sender: self)
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
