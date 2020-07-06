//
//  CategoryThing.m
//  OC
//
//  Created by mumu on 6/7/20.
//  Copyright © 2020年 mumu. All rights reserved.
//


#import "CategoryThing.h"

@interface CategoryThing()
{
@private
	NSInteger thing4_;
}

@end


@implementation CategoryThing

@synthesize thing2 = thing2_;
@synthesize thing3 = thing3_;
@synthesize thing1 = thing1_;

-(id) init
{
	if(self = [super init])
	{
		thing1_ = 100;
		thing2_ = 100;
		thing3_ = 100;
		thing4_ = 100;
	}
	return self;
}

-(NSString*) description
{
	NSString* desc = [NSString stringWithFormat:@"%d %d %d %d", thing1_, thing2_, thing3_, thing4_];
	return desc;
}

@end
