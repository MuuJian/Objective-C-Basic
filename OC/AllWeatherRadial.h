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
	float rainhandling_;
	float snowhandling_;
}

-(id) init;
-(void) SetRainHandLing:(float)rainhandling;
-(float) RainHandLing;
-(void) SetSnowHandLing:(float)snowhandling;
-(float) snowhandling;
@end

NS_ASSUME_NONNULL_END
