//
//  RetainTracker.m
//  OC
//
//  Created by mumu on 18/6/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker

-(id) init
{
	if(self = [super init])
	{
		NSLog(@"init: Retain count of %lu.", [super retainCount]);
	}
	return self;
}

-(void) dealloc
{
	NSLog(@"dealloc called. Bye Bye.");
	[super dealloc];
}

@end
