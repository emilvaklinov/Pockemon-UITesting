//
//  PoisenDefenderTests.swift
//  PoisenDefenderTests
//

//

import XCTest
@testable import Pokemon

class PoisenDefenderTests: XCTestCase {

    var gameUnderTest: Pokemon!
    override func setUp() {
        
        gameUnderTest = Pokemon(.poison)
        
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
    
    func testFightAttak() {
        
        //Given
        let attacker = Pokemon(.fight)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    
    func testPoisonAttak() {
        
        //Given
        let attacker = Pokemon(.poison)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    
    func testGhostAttak() {
        
        //Given
        let attacker = Pokemon(.ghost)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testFireAttak() {
        
        //Given
        let attacker = Pokemon(.fire)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testGrassAttak() {
        
        //Given
        let attacker = Pokemon(.grass)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 85)
    }
    func testElectricAttak() {
        
        //Given
        let attacker = Pokemon(.electric)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testPsychicAttak() {
        
        //Given
        let attacker = Pokemon(.psychic)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 40)
    }
    
    func testIceAttak() {
        
        //Given
        let attacker = Pokemon(.Ice)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
    func testDragonAttak() {
        
        //Given
        let attacker = Pokemon(.dragon)
        //When
        attacker.attack(gameUnderTest)
        
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
    }
    
   
}
