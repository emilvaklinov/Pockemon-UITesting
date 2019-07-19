//
//  WaterDefenderTests.swift
//  WaterDefenderTests
//

//

import XCTest
@testable import Pokemon
class WaterDefenderTests: XCTestCase {

    var gameUnderTest: Pokemon!
    override func setUp() {
        
        gameUnderTest = Pokemon(.water)
        
    }
    
    override func tearDown() {
        gameUnderTest = nil
        super.tearDown()
    }
    
    func testFireAttak() {
        
        //Given
        let attacker = Pokemon(.fire)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    
    func testWaterAttak() {
        
        //Given
        let attacker = Pokemon(.water)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    
    func testGrassAttak() {
        
        //Given
        let attacker = Pokemon(.grass)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 40)
    }
    
    func testElecttricAttak() {
        
        //Given
        let attacker = Pokemon(.electric)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 40)
    }
    
    func testDragonAttak() {
        
        //Given
        let attacker = Pokemon(.dragon)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    func testPsichicAttak() {
        
        //Given
        let attacker = Pokemon(.psychic)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testNormalAttak() {
        
        //Given
        let attacker = Pokemon(.normal)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testIceAttack() {
        let attacker = Pokemon(.Ice)
        attacker.attack(gameUnderTest)
        XCTAssertEqual(gameUnderTest.health, 85)
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
        XCTAssertEqual(gameUnderTest.health, 70)
    }
}
