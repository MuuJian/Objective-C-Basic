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

@interface Car:NSObject <NSCopying>
{
@private
	NSString* name_;
	Engine* engine_;
	NSMutableArray* tires_;
	NSString* make_;
	NSString* model_;
	int modelyear_;
	int numberofdoors_;
	float mileage_;
}

@property(nonatomic, copy) NSString* name;
@property(nonatomic, strong) Engine* engine;
@property(nonatomic, copy) NSString* make;
@property(nonatomic, copy) NSString* model;
@property(nonatomic, assign) int modelyear;
@property(nonatomic, assign) int numberofdoors;
@property(nonatomic, assign) float mileage;

-(Tire*) tireAtIndex:(int)index;
-(void) setTire:(Tire*)tire atIndex:(int)index;
-(void) print;

@end
