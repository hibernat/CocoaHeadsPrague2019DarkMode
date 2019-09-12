//
//  MyRGB.swift
//  DarkModeDemo
//
//  Created by Michael Bernat on 12/09/2019.
//  Copyright © 2019 Michael Bernat. All rights reserved.
//


struct MyRGB {
    let red: UInt32
    let green: UInt32
    let blue: UInt32
    
    var dark: MyRGB {
        var r = self.red
        var g = self.green
        var b = self.blue
        switch r * 0x10000 + g * 0x100 + b {
        case 0xFF5857: r = 0x58; g = 0xE0; b = 0x85
        default: break
        }
        return MyRGB(red: r, green: g, blue: b)
    }
}
