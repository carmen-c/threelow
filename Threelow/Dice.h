//
//  Dice.h
//  Threelow
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSInteger currentValue;
@property (nonatomic, getter=isHeld) BOOL held;

-(void)random;



@end
