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

-(id) copyWithZone:(NSZone *)zone
{
	AllWeatherRadial* tirecopy = [super copyWithZone:zone];
	tirecopy.rainHandLing = rainHandLing_;
	tirecopy.snowHandLing = snowHandLing_;
	return tirecopy;
}

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


@end
