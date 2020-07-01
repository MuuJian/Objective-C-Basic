//
//  AllWeatherRadial.m
//  OC
//
//  Created by mumu on 22/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

@synthesize snowhandling = snowhandling_;
@synthesize rainhandling = rainhandling_;

-(id) init
{
	if(self = [super init])
	{
		rainhandling_ = 23.7;
		snowhandling_ = 42.5;
	}
	return self;
}

-(NSString*) description
{
	NSString* desc = [[NSString alloc] initWithFormat:@"AllWeatherRadial: %.1f / @%.1f / @%.1f / @%.1f", self.pressure, self.treaddepth, self.snowhandling, self.rainhandling];
	return desc;
}

/*
-(void) SetRainHandLing:(float)rainhandling
{
	rainhandling_ = rainhandling;
}

-(float) RainHandLing
{
	return rainhandling_;
}

-(void) SetSnowHandLing:(float)snowhandling
{
	snowhandling_ = snowhandling;
}

-(float) snowhandling
{
	return snowhandling_;
}
*/
@end
