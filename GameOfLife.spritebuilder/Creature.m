//
//  Creature.m
//  GameOfLife
//
//  Created by Taskmaster on 2015-06-08.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

- (instancetype)initCreature
{
    // Since we made Creature inherit from CCSprinte, 'super' below refers to CCSprite.
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    if (self)
    {
        self.isAlive = NO;
    }
    
    return self;
}

@end
