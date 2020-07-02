//
//  Car.m
//  OC
//
//  Created by mumu on 20/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car

@synthesize name = name_;
@synthesize engine = engine_;

-(void) print
{
	NSLog(@"%@ has ",name_);
	for(int i = 0; i < 4; ++i)
	{
		NSLog(@"%@", tires_[i]);
		//NSLog(@"%d", [tires_[i] retainCount]);
	}
	NSLog(@"%@", engine_);
}

-(id) init
{
	if(self = [super init])
	{
		name_ = @"car";
		tires_ = [[NSMutableArray alloc] init];
		for(int i = 0; i < 4; ++i)
		{
			[tires_ addObject:[NSNull null]];
		}
	}
	return self;
}

-(void)setName:(NSString*)newName
{
	name_ = [newName copy];
}

-(void) setTire:(Tire *)tire atIndex:(int)index
{
	tires_[index] = tire;
}

-(Tire*) tireAtIndex:(int)index
{
	Tire* tire = tires_[index];
	return tire;
}

-(void) setEngine:(Engine *)newEngine
{
	engine_ = newEngine;
}

//普通版本
/*
-(void) SetEngine:(Engine *)newEngine
{
	if(engine_ != nil)
	{
		[engine_ release];
	}
	engine_ = [newEngine retain];
}
*/

//ARC
/*
-(Engine*) Engine
{
	return engine_;
}
*/

/*
-(void) dealloc
{
	[tires_ release];
	[engine_ release];
	[super dealloc];
}
*/
@end
