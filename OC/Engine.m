//
//  Engine.m
//  OC
//
//  Created by mumu on 22/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "Engine.h"

@implementation Engine

-(NSString*) description
{
	return (@"I am an engine");
}

-(id) copyWithZone:(NSZone *)zone
{
	Engine* enginecopy = [[[self class] allocWithZone:zone] init];
	return enginecopy;
}
@end
