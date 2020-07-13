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
#import "CategoryThing.h"

int main(int argc, char* argv[])
{
	@autoreleasepool {
		Car* car = [[Car alloc] init];
		for(int i = 0; i < 4; ++i)
		{
			AllWeatherRadial* tire =[[AllWeatherRadial alloc] init];
			tire.snowHandLing = 20 + i;
			tire.rainHandLing = 28 + i;
			
			[car setTire:tire atIndex:i];
			/*
			 [tire SetRainHandLing:20+i];
			 [tire SetSnowHandLing:28+i];
			 NSLog(@"Tire %d's handling is %.f %.f", i, [tire RainHandLing], [tire snowhandling])
			 [car SetTire:tire AtIndex:i];
			 */
			//[tire release];
		}
		car.name = @"Herbie";
		car.engine = [[Slant6 alloc] init];
		//[car SetEngine:engine];
		[car print];
		//[car release];
		Car* carcopy = [car copy];
		[carcopy print];
	}
	return 0;
}
