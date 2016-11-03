//
//  GameController.h
//  Threelow
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
@interface GameController : NSObject

-(void)roll;
-(void)hold:(NSInteger)number;
-(void)unhold:(NSInteger)number;
-(void)reset;
-(void)score;

@end
