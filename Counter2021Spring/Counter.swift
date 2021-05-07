//
//  Counter.swift
//  Counter2021Spring
//
//  Created by iosdev on 23.3.2021.
//

import Foundation

class Counter  {
    private(set) var value: Int
    private(set) var lower: Int
    private(set) var upper: Int
    
    init(_ from:Int = 0, to:Int = 10) {
        self.lower = from
        self.upper = to
        self.value = from
    }
    
    func increase(by:Int = 1) {
        if(self.value + by <= self.upper) {
            self.value += by
        }
    }
    
    func decrease(by:Int = 1) {
        if(self.value - by >= self.lower) {
            self.value -= by
        }
    }
    
    
    
}
