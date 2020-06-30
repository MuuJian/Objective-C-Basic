//
//  main.m
//  OC
//
//  Created by mumu on 15/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main(int argc, char* argv[])
{
	@autoreleasepool {
		Car* car = [[Car alloc] init];
		for(int i = 0; i < 4; ++i)
		{
			Tire* tire;
			tire = [[Tire alloc] init];
			[tire SetPressure:23 + i];
			[tire SetTreadDepth:33 - i];
			[car SetTire:tire AtIndex:i];
			[tire release];
		}
		Engine* engine = [[Slant6 alloc] init];
		[car SetEngine:engine];
		[car Print];
		[car release];
		
	}

	return 0;
}
