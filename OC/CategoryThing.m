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

-(void) setThing1:(NSInteger)thing1
{
	thing1_ = thing1;
}

-(NSInteger) Thing1
{
	return thing1_;
}

@end
