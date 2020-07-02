//
//  AllWeatherRadial.h
//  OC
//
//  Created by mumu on 22/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"

NS_ASSUME_NONNULL_BEGIN

@interface AllWeatherRadial : Tire
{
@private
	float rainHandLing_;
	float snowHandLing_;
}

@property float rainHandLing;
@property float snowHandLing;

/*
 -(void) setRainHandLing:(float)rainHandLing;
 -(float) rainHandLing;
 -(void) setSnowHandLing:(float)snowHandLing;
 -(float) snowHandLing;
 */


@end

NS_ASSUME_NONNULL_END

