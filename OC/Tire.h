//
//  Tire.h
//  OC
//
//  Created by mumu on 22/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject
{
@private
	float pressure_;
	float treaddepth_;
}

@property float pressure;
@property float treaddepth;

-(id) initWithPressure:(float)pressure;
-(id) initWithTreadDepth:(float)treaddepth;
-(id) initWithPressure:(float)pressure TreadDepth:(float)treaddepth;

/*
-(void) SetPressure:(float)pressure;
-(float) Pressure;
-(void) SetTreadDepth:(float)treaddepth;
-(float) TreadDepth;
*/
@end

NS_ASSUME_NONNULL_END
