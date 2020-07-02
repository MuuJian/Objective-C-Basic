//
//  Tire.m
//  OC
//
//  Created by mumu on 22/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "Tire.h"

@implementation Tire

@synthesize pressure = pressure_;
@synthesize treadDepth = treadDepth_;

-(NSString*) description
{
	NSString* desc = [NSString stringWithFormat:@"Tire: pressure: %.1f TreadDepth: %.1f", pressure_, treadDepth_];
	return desc;
}

-(id) init
{
	if(self = [super init])
	{
		pressure_ = 34.0;
		treadDepth_ = 20.0;
	}
	return self;
}

-(id) initWithPressure:(float)pressure
{
	if(self = [self initWithPressure:pressure TreadDepth:20.0])
	{
	
	}
	return self;
}

-(id) initWithTreadDepth:(float)treadDepth
{
	if(self = [self initWithPressure:34.0 TreadDepth:treadDepth])
	{

	}
	return self;
}

-(id) initWithPressure:(float)pressure TreadDepth:(float)treadDepth
{
	if(self = [super init])
	{
		pressure_ = pressure;
		treadDepth_ = treadDepth;
	}
	return self;
}

/*
-(void) SetPressure: (float)pressure
{
	pressure_ = pressure;
}

-(float) Pressure
{
	return pressure_;
}

-(void) SetTreadDepth: (float)treaddepth
{
	treaddepth_ = treaddepth;
}

-(float) TreadDepth
{
	return treaddepth_;
}
*/

@end
