//
//  Player.swift
//  app-navigator
//
//  Created by Jeff Jeong on 2019. 6. 27..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import Foundation

// struct 를 기본으로 사용
// 왠만하면 struct 를 사용한다. string 이나 인스턴스를 사용할 때
// class의 경우에는 참조형 이다. 즉 포인터
// struct는 밸류 타입이다. 즉 메모리에 바로 접근한다.
// 배열과 연결 리스트 중에서 배열이 요소에 접근하는것이 훨씬 빠르다는 것을 통해 알수 있다.

// 데이터 모델
struct Player {
    // 관련 변수 선언
    // ? 키워드를 통해 nil 이 들어있어도 괜찮다.
    // 변수명: String 을 함으로써 자료형을 명시해준다.
    
    // 리그
    var desiredLeague: String!
    
    // 선택한 스킬레벨
    var selectedSkillLevel: String!
    
    // 데이터가 항상 있을것이라고 확정, 즉 nil 이 안됨
//    var myData: String! // Implicity unwrapped optional
//    Use when you can guarantee variable will have data in it before used
//
    // 데이터가 없을수도 있다고 선언, 즉 nil 이 될수도 있다.
//    var myData: String? // Optional
//    Use when there may or may not be data in the variable at runtime
    
}

