//
//  Mod.swift
//  NumKit
//
//  Created by pebble8888 on 2017/08/05.
//  Copyright © 2017年 pebble8888. All rights reserved.
//

import Foundation

func isOdd(_ a:Int) -> Bool {
    return (a % 2) == 1
}

func expmod(_ b:Int, _ e:Int, _ p:Int) -> Int {
    if e == 0 { return 1 }
    let s = expmod(b, e/2, p)
    // 2乗する
    let r = (s * s) % p
    if isOdd(e) {
        return (r * b) % p
    } else {
        return r
    }
}

func inversemod(_ b:Int, _ p:Int) -> Int {
    return expmod(b, p-2, p)
}

func quadraticResidue(_ a:Int, _ p:Int) -> Int {
    assert(p % 8 == 5)
    let x = expmod(a, (p+3)/8, p)
    if (x * x - a) % p == 0 {
        return x
    }
    let t = expmod(2, (p-1)/4, p)
    return t * x
}