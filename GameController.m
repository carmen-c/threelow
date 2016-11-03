//
//  GameController.m
//  Threelow
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "GameController.h"

@interface GameController ()
@property (nonatomic) NSMutableArray *diceNumber;
@property (nonatomic) NSDictionary *dicePicture;
@end

@implementation GameController

//⚀ ⚁ ⚂ ⚃ ⚄ ⚅

- (instancetype)init{
    if (self = [super init]) {
        _dicePicture = @{@"1": @"⚀", @"2": @"⚁", @"3": @"⚂", @"4": @"⚃", @"5": @"⚄", @"6": @"⚅"};
        _diceNumber = [[NSMutableArray alloc]init];
        for (int i = 0; i < 5; i++) {
            Dice *dice = [[Dice alloc]init];
            [_diceNumber addObject:dice];
        }
    }
    return self;
}

-(void)roll {
    for (Dice* myDice in self.diceNumber) {
        if(myDice.held == NO) {
            [myDice random];
        }
    }
    [self displayDiceValues];
}

-(void)displayDiceValues {
    int i = 1;
    for (Dice *myDice in self.diceNumber) {
        if(myDice.held == YES) {
            NSLog(@"Dice %d is: * %@ *", i, [self.dicePicture objectForKey:[NSString stringWithFormat:@"%ld", myDice.currentValue]]);
        } else {
            NSLog(@"Dice %d is: %@", i, [self.dicePicture objectForKey:[NSString stringWithFormat:@"%ld", myDice.currentValue]]);
        }
        i++;
    }
}

-(void)hold:(NSInteger)number {
    [[self.diceNumber objectAtIndex:(number - 1)] setHeld:YES];
    NSLog(@"You have held dice number %ld", number);
}


-(void)unhold:(NSInteger)number {
    [[self.diceNumber objectAtIndex:(number - 1)] setHeld:NO];
    NSLog(@"You have unheld dice number %ld", number);
}

-(void)reset {
    for(Dice *myDice in self.diceNumber) {
        [myDice setHeld:NO];
    }
}

-(void)score {
    int score = 0;
    for (Dice *myDice in self.diceNumber) {
        if(myDice.currentValue != 3) {
            score += myDice.currentValue;
        }
    }
    NSLog(@"Your current score is: %d", score);
}
@end
