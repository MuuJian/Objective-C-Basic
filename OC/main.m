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
#import "BlockCode.h"


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
		
		}
		car.name = @"Herbie";
		car.make = @"Honda";
		car.model = @"CRX";
		car.numberofdoors = 2;
		car.modelyear = 1984;
		car.mileage = 110000;
		car.engine = [[Slant6 alloc] init];
		//[car print];
		Car* carcopy = [car copy];
		NSLog(@"car is %@", carcopy);
		
		NSString* name = [car valueForKey:@"name"];
		NSLog(@"%@", name);
		[car setValue:@"Harold" forKey:@"name"];
		NSLog(@"car is %@", car);
	}
	return 0;
}
