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

-(id) copyWithZone:(NSZone *)zone
{
	Car* carcopy = [[[self class] allocWithZone:zone] init];
	carcopy.name = name_;
	carcopy.engine = [engine_ copy];
	for(int i = 0; i < 4; ++i)
	{
		Tire* tirecopy = [[self tireAtIndex:i] copy];
		[carcopy setTire:tirecopy atIndex:i];
	}
	return carcopy;
}

-(id) init
{
	if(self = [super init])
	{
		name_ = @"car";
		tires_ = [NSMutableArray arrayWithCapacity:4];
		for(int i = 0; i < 4; ++i)
		{
			[tires_ addObject:[NSNull null]];
		}
	}
	return self;
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

@end
