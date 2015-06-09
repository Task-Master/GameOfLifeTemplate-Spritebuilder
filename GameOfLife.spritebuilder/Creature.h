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

@end
