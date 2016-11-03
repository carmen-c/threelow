//
//  Dice.m
//  Threelow
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(instancetype)init {
    self = [super init];
    if(self) {
        _held = NO;
    }
    return self;
}

-(void)random {
    int lower = 1;
    int upper = 6;
    int randomNumber = lower + arc4random() % (upper - lower);
    self.currentValue = randomNumber;
}

@end
