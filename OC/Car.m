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

-(id) init
{
	if(self = [super init])
	{
		tires_ = [[NSMutableArray alloc] init];
		for(int i = 0; i < 4; ++i)
		{
			[tires_ addObject:[NSNull null]];
		}
	}
	return self;
}

-(Engine*) Engine
{
	return engine_;
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
-(void) SetEngine:(Engine *)newEngine
{
	engine_ = newEngine;
}

-(void) SetTire:(Tire *)tire AtIndex:(int)index
{
	tires_[index] = tire;
}

-(Tire*) TireAtIndex:(int)index
{
	Tire* tire = tires_[index];
	return tire;
}

-(void) Print
{
	for(int i = 0; i < 4; ++i)
	{
		NSLog(@"%@", tires_[i]);
		//NSLog(@"%d", [tires_[i] retainCount]);
	}
	NSLog(@"%@", engine_);
}

/*
-(void) dealloc
{
	[tires_ release];
	[engine_ release];
	[super dealloc];
}
*/
@end
