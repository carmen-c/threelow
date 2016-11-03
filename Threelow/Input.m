//
//  Input.m
//  Threelow
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "Input.h"

@implementation Input

-(void) menu{
    NSLog(@"What would you like do next?\n");
    NSLog(@"roll - roll dice\n");
    NSLog(@"hold - hold dice\n");
    NSLog(@"unhold - release a dice\n");
    NSLog(@"reset - release all held dice\n");
    NSLog(@"quit - exit game\n");
}

-(NSString *)returnString{
    
    char input [255];
    scanf("%s", input);
    NSString *inputString = [NSString stringWithCString: input encoding:NSUTF8StringEncoding];
    return inputString;
}

@end
