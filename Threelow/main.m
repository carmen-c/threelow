//
//  main.m
//  Threelow
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Input.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Input *input = [[Input alloc]init];
        GameController *gameController = [[GameController alloc]init];
        NSString *select;
        BOOL gameOn = YES;
        
        while (gameOn == YES){
        
            [input menu];
            select = [input returnString];
            
            if ([select isEqualToString: @"roll"]) {
                NSLog(@"Your Dice: ");
                [gameController roll];
            }
            else if ([select isEqualToString:@"hold"]) {
                NSLog(@"Which one would you like to hold?");
                select = [input returnString];
                [gameController hold:select.integerValue];
            }
            else if ([select isEqualToString:@"unhold"]) {
                NSLog(@"Which one would you like to release?");
                select = [input returnString];
                [gameController unhold:select.integerValue];
            }
            else if ([select isEqual: @"reset"]) {
                [gameController reset];

            }
            else if ([select isEqualToString: @"quit"]) {
                gameOn = NO;
            }
            else {
                NSLog(@"Please try again.");
            }
            
            [gameController score];
            
        }
        
    }
    return 0;
}
