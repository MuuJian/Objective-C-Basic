//
//  AllWeatherRadial.m
//  OC
//
//  Created by mumu on 22/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

@synthesize snowHandLing = snowHandLing_;
@synthesize rainHandLing = rainHandLing_;

-(id) init
{
	if(self = [super init])
	{
		rainHandLing_ = 23.7;
		snowHandLing_ = 42.5;
	}
	return self;
}

-(NSString*) description
{
	NSString* desc = [NSString stringWithFormat:@"AllWeatherRadial: %.1f / @%.1f / @%.1f / @%.1f", self.pressure, self.treadDepth, self.rainHandLing, self.snowHandLing];
	return desc;
}

/*
-(void) setRainHandLing:(float)rainHandLing
{
	rainHandLing_ = rainHandLing;
}

-(float) rainHandLing
{
	return rainHandLing_;
}

-(void) setSnowHandLing:(float)snowHandLing
{
	snowHandLing_ = snowHandLing;
}

-(float) snowHandLing
{
	return snowHandLing_;
}
*/


@end
