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
@private
	NSString* name_;
	Engine* engine_;
	NSMutableArray* tires_;
}

@property(nonatomic, copy) NSString* name;
@property(nonatomic, strong) Engine* engine;

/*
-(Engine*) engine;
-(void) setEngine:(Engine*)newEngine;
 */
-(Tire*) tireAtIndex:(int)index;
-(void) setTire:(Tire*)tire atIndex:(int)index;
-(void) print;

@end
