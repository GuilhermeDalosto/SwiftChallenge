//
//  KIF+Extensions.swift
//  ios-challenge-masterUITests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 08/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

import KIF
extension XCTestCase {
func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
return KIFUITestActor(inFile: file, atLine: line, delegate: self)
}
func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
}
}
extension KIFTestActor {
func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
return KIFUITestActor(inFile: file, atLine: line, delegate: self)
}
func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
}
}
