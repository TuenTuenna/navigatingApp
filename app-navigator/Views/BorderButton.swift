//
//  BorderButton.swift
//  app-navigator
//
//  Created by Jeff Jeong on 2019. 6. 27..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import UIKit


class BorderButton: UIButton {
    //
    override func awakeFromNib() {
        // 부모 함수를 부른다. super 키워드
        super.awakeFromNib()
        // 경계선을 흰색으로 두르자
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 5;
        layer.masksToBounds = true
    }
}
