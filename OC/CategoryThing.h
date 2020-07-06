//
//  CategoryThing.h
//  OC
//
//  Created by mumu on 6/7/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CategoryThing : NSObject
{
@private
	NSInteger thing1_;
	NSInteger thing2_;
	NSInteger thing3_;
}

-(void) setThing1:(NSInteger)thing1;
-(NSInteger) Thing1;
@end

NS_ASSUME_NONNULL_END
