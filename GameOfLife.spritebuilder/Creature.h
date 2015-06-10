//
//  Creature.h
//  GameOfLife
//
//  Created by Taskmaster on 2015-06-08.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

// Stores the current state of the creature
@property (nonatomic, assign) BOOL isAlive;

// Stores the amount of living neighours.
@property (nonatomic, assign) NSInteger livingNeighbors;

- (id)initCreature;

- (void)setIsAlive:(BOOL)newState{

    // When you create an @property as we did in the .h, an instance variable with a leading underscore is automatically create for you.
    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from CCNode.  CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creatures have a visible property.
    self.visible = _isAlive;
}
@end
