//
//  ViewController.swift
//  Using Reactive Programing
//
//  Created by mohamed hashem on 12/3/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import UIKit
import RxSwift
import RxRelay

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       let observable = Observable.just("wellcom")
        BehaviorSubject(value: [1,2,3,4,5])
        BehaviorRelay(value: [1,2,3,4,5])
        let n = Single<Int>.just(10)
        let replaySubject = ReplaySubject<Int>.create(bufferSize: 1)
    }


}

