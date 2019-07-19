//
//  GrassDefenderTests.swift
//  GrassDefenderTests
//
//  Created by The App Experts on 26/06/2019.
//  Copyright © 2019 Brian @ TAE. All rights reserved.
//

import XCTest
@testable import Pokemon

class GrassDefenderTests: XCTestCase {

    var gameUnderTest: Pokemon!
    override func setUp() {
        
        gameUnderTest = Pokemon(.grass)
        
    }
    
    override func tearDown() {
        gameUnderTest = nil
        super.tearDown()
    }
    
    func testWaterAttak() {
        
        //Given
        let attacker = Pokemon(.water)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    
    func testGrassAttack() {
        // Given
        let attacker = Pokemon(.grass)
        // When
        attacker.attack(gameUnderTest)
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    
    func testElectricAttack()  {
        // Given
        let attacker = Pokemon(.electric)
        // When
        attacker.attack(gameUnderTest)
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    
    func testFireAttack() {
        // Given
        let attacker = Pokemon(.fire)
        // When
        attacker.attack(gameUnderTest)
        // Then
        XCTAssertEqual(gameUnderTest.health, 40)
    }
    
    func testDragonAttack() {
        // Given
        let attacker = Pokemon(.dragon)
        // When
        attacker.attack(gameUnderTest)
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testPsichicAttack() {
        // Given
        let attacker = Pokemon(.psychic)
        // When
        attacker.attack(gameUnderTest)
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testNormalAttack() {
        // Given
        let attacker = Pokemon(.normal)
        // When
        attacker.attack(gameUnderTest)
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testAceAttacke() {
        let attacker = Pokemon(.Ice)
        attacker.attack(gameUnderTest)
        XCTAssertEqual(gameUnderTest.health, 40)
    }
    
    func testGhostlAttak() {
        
        //Given
        let attacker = Pokemon(.ghost)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }

    func testFightAttak() {
        
        //Given
        let attacker = Pokemon(.fight)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testPoisonAttak() {
        
        //Given
        let attacker = Pokemon(.poison)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 40)
    }
    
}
