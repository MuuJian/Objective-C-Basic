//
//  Shape.m
//  OC
//
//  Created by mumu on 20/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "Shape.h"

@implementation Shape

-(void) SetFillColor:(ShapeColor)fillcolor
{
	fillcolor_ = fillcolor;
}

-(void) SetBounds:(ShapeRect)bounds
{
	 bounds_ = bounds;
}

-(void) Draw
{
}

@end

@implementation Circle

-(void) SetFillColor:(ShapeColor)fillcolor
{
	if(fillcolor == red)
	{
		fillcolor = green;
	}
	[super SetFillColor: fillcolor];
}

-(void) Draw
{
	NSLog(@"Drawing a Circle at (%d, %d, %d, %d) in %@", bounds_.x, bounds_.y, bounds_.height, bounds_.width, ColorName(fillcolor_));
}

@end

@implementation Triangle


-(void) Draw
{
	NSLog(@"Drawing a Traiangle at (%d, %d, %d, %d) in %@", bounds_.x, bounds_.y, bounds_.height, bounds_.width, ColorName(fillcolor_));
}

@end

NSString* ColorName(ShapeColor colorName)
{
	switch(colorName)
	{
		case red:
			return @"Red";
			break;
		case green:
			return @"Green";
			break;
		case blue:
			return @"Blue";
			break;
	}
}


void DrawShape(id shapes[], int count)
{
	for(int i = 0; i < count; ++i)
	{
		id shape = shapes[i];
		[shape Draw];
	}
}

