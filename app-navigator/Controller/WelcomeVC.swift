//
//  ViewController.swift
//  app-navigator
//
//  Created by Jeff Jeong on 2019. 6. 27..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import UIKit


// VC is shortCut for ViewController
// 웰컴스트린 뷰 컨트롤러 클래스 
class WelcomeVC: UIViewController {

    
    @IBOutlet weak var bgImg: UIImageView!
    
    
    // 뷰가 로드되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 뷰의 크기를 가져온다.
        // x: 뷰의 정 가운데 위치 - 로고의 정가운데를 빼기
//        logo.frame = CGRect(x: view.frame.size.width / 2 - logo.frame.size.width / 2, y: 50, width: logo.frame.size.width, height: logo.frame.size.height)
        
        // 이미지를 프레임을 뷰의 프레임으로 설정한다.
        bgImg.frame = view.frame
        
    }
    
    
//    @IBAction func unwindFromSkillVC(){
//
//    }
    // 이전 뷰로 돌아간다.
    //Interface Builder Action: IBAction
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
    

    

}

