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

@property(nonatomic, assign) NSInteger thing1;
@property(nonatomic, assign) NSInteger thing2;
@property(nonatomic, assign) NSInteger thing3;


@end

NS_ASSUME_NONNULL_END
