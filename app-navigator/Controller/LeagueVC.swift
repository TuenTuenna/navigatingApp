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
    
    // ! 키워드 옵셔널로 선언
    var player: Player!
    
    // 뷰에서 사라지면 week 키워드 가진 놈들도 메모리에서 버려진다.
    // 포인터 개념 
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
//        // 3초 뒤에 selector 안에 있는 메소드 실행
//        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(skillVCSegue), userInfo: nil, repeats: false)
        
        // 플레이어 모델 스트럭트 인스턴스화
        player = Player()
        
    }
    
    
    // next 버튼이 탭 되었을때
    @IBAction func onNextTapped(_ sender: Any) {
        // self 가 안드로이드에서 this 와 같은것
        // startActivity(new intent(), this);
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
    
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "womens")
        
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        
        selectLeague(leagueType: "coed")
        
    }
    
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        NSLog("player.desiredLeague: %@", leagueType)
    }
    
    
    
//    @objc func skillVCSegue(){
//        // self 가 안드로이드에서 this 와 같은것
//        // startActivity(new intent(), this);
//        performSegue(withIdentifier: "skillVCSegue", sender: self)
//    }
    
    // viewDidLoad 전에 prepareForSegue 가 항상 호출된다.
    // (on the destination view controller)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 도착한 뷰가 skillVC 이면
        // skillVC 에 기존에 뷰 컨트롤러가 가지고 있던 데이터가 담기면
        if let skillVC = segue.destination as? SkillVC {
            
            // skillVC.player = self.player
            // league 뷰컨트롤러에 있는 player 데이터모델을 skill 뷰컨트롤러의 player 데이터 모델에 덧씌운다.
            skillVC.player = player
        }
    }

}
