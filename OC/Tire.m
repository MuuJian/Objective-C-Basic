//
//  Tire.m
//  OC
//
//  Created by mumu on 22/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "Tire.h"

@implementation Tire

-(id) init
{
	if(self = [self initWithPressure:34.0 TreadDepth:20.0])
	{
		
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

-(id) initWithTreadDepth:(float)treaddepth
{
	if(self = [self initWithPressure:34.0 TreadDepth:treaddepth])
	{

	}
	return self;
}

-(id) initWithPressure:(float)pressure TreadDepth:(float)treaddepth
{
	if(self = [super init])
	{
		pressure_ = pressure;
		treaddepth_ = treaddepth;
	}
	return self;
}

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

-(NSString*) description
{
	NSString* desc = [NSString stringWithFormat:@"Tire: pressure: %.1f TreadDepth: %.1f", pressure_, treaddepth_];
	return desc;
}

@end
