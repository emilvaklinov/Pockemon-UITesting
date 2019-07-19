//
//  ElectricDefenderTests.swift
//  ElectricDefenderTests
//

//

import XCTest
@testable import Pokemon

class ElectricDefenderTests: XCTestCase {

    var gameUnderTest: Pokemon!
    override func setUp() {
        
        gameUnderTest = Pokemon(.electric)
        
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
    
    func testGrassAttack() {
        // Given
        let attacker = Pokemon(.grass)
        // When
        attacker.attack(gameUnderTest)
        // Then
        XCTAssertEqual(gameUnderTest.health, 70)
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
        XCTAssertEqual(gameUnderTest.health, 70)
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
    
    func testIceAttacke() {
        let attacker = Pokemon(.Ice)
        attacker.attack(gameUnderTest)
        XCTAssertEqual(gameUnderTest.health, 70)
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
