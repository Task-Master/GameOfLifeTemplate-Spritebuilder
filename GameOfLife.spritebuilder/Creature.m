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

    - (void)setIsAlive:(BOOL)newState
    {
        // When you create an @property as we did in the .h, an instance variable with a leading underscore is automatically create for you.
        _isAlive = newState;
    
        // 'visible' is a property of any class that inherits from CCNode.  CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creatures have a visible property.
        self.visible = _isAlive;
    }
    
    - (Creature *)creatureForTouchPosition:(CGPoint)touchPosition
    {
        // Get the row and column that was touched, return the Creature inside the corresponding cell.
        row = touchPosition.y / cellHeight;
        column = touchPosition.x / cellWidth;
        return _gridArray[row][column]
    }
}
@end
