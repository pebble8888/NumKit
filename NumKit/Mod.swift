//
//  Mod.swift
//  NumKit
//
//  Created by pebble8888 on 2017/08/05.
//  Copyright © 2017年 pebble8888. All rights reserved.
//

import Foundation

func isOdd(_ x:UInt) -> Bool {
    return (x % 2) == 1
}

func isEven(_ x:UInt) -> Bool {
    return !isOdd(x)
}

func isPrime(_ x:UInt) -> Bool {
    if x == 2 { return true }
    if x < 2 || isEven(x) { return false }
    var i:UInt = 3
    while i * i <= x {
        if x % i == 0 {
            return false
        }
        i = i.advanced(by: 2)
    }
    return true
}

func expmod(_ b:UInt, _ e:UInt, _ p:UInt) -> UInt {
    if e == 0 { return 1 }
    let s = expmod(b, e/2, p)
    let r = (s * s) % p
    if isOdd(e) {
        return (r * b) % p
    } else {
        return r
    }
}

func inversemod(_ b:UInt, _ p:UInt) -> UInt {
    assert(isPrime(p))
    return expmod(b, p-2, p)
}

func quadraticResidue(_ a:UInt, _ p:UInt) -> UInt {
    assert(p % 8 == 5)
    let x = expmod(a, (p+3)/8, p)
    if (x * x - a) % p == 0 {
        return x
    }
    let t = expmod(2, (p-1)/4, p)
    return t * x
}

func gcd(_ a:UInt, _ b:UInt) -> UInt {
    if a < b {
        return gcd(b, a)
    }
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

func pow2(_ n:UInt) -> UInt {
    return 1 << n
}

func Mersenne(_ n:UInt) -> UInt {
    return pow2(n) - 1
}
