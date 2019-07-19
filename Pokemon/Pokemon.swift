//
//  Pokemon.swift
//  Pokemon
//
//
//

import Foundation

enum PokemonType {
    case normal
    case fire
    case water
    case grass
    case electric
    case psychic
    case dragon
    case Ice
    case ghost
    case fight
    case poison
}

typealias PokemonAttackType = PokemonType

class Pokemon {
    
    let type: PokemonType
    var health = 100
    let attackDamage = 30.0
    
    init(_ type:PokemonType) {
        self.type = type
    }
    
    var attackType: PokemonAttackType {
        return type
    }
    
}

extension Pokemon {
    
    func attack(_ defender: Pokemon) {
        
        var damageMultiplier = 1.0
        
        // Check when an X type pokemon is attacked by a Y type attack
        switch (defender.type, attackType) {
            
        case (.fire, .water),// correct
             (.water, .grass),//correct
             (.water, .electric),//correct
             (.grass, .fire),//correct
             (.dragon, .dragon),//correct
             (.dragon, .fire), //WRONG
             (.Ice, .fire), // correct
             (.dragon, .Ice), // correct
             (.grass, .Ice), // correct
             (.ghost, .ghost),
             (.normal, .fight),
             (.fight, .psychic),
             (.grass, .poison),
             (.poison, .psychic):
            damageMultiplier = 2.0
            
        case (.fire, .fire),//correct
             (.fire, .grass),//correct
             (.water, .fire),//correct
             (.water, .water),//correct
             (.grass, .water),//correct
             (.grass, .electric),//correct
             (.grass, .grass),//correct
             (.electric, .electric),//correct
             (.psychic, .psychic),//correct
             (.normal, .normal), //WRONG
             (.Ice, .Ice), // correct
             (.water, .Ice), // correct
             (.poison, .fight),
             (.poison, .poison),
             (.poison, .grass),
             (.ghost, .poison):
            damageMultiplier = 0.5
            
        case (.ghost, .normal),
             (.normal, .ghost),
             (.psychic, .ghost),
             (.ghost, .fight):
            damageMultiplier = 0.0
            
        default: break
        }
        
        defender.health = defender.health - Int(attackDamage * damageMultiplier)
        
    }
    
}
