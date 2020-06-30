//
//  Header.h
//  OC
//
//  Created by mumu on 20/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tire;
@class Engine;

@interface Car:NSObject
{
	Engine* engine_;
	NSMutableArray* tires_;
}

-(Engine*) Engine;
-(void) SetEngine:(Engine*)newEngine;
-(Tire*) TireAtIndex:(int)index;
-(void) SetTire:(Tire*)tire AtIndex:(int)index;
-(void) Print;

@end
