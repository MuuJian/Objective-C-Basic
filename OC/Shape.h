//
//  Shape.m
//  OC
//
//  Created by mumu on 20/4/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
	red,
	green,
	blue
}ShapeColor;


typedef struct
{
	int x, y, width, height;
}ShapeRect;


@interface Shape: NSObject
{
	ShapeColor fillcolor_;
	ShapeRect bounds_;
}

-(void) SetFillColor:(ShapeColor)fillcolor;
-(void) SetBounds:(ShapeRect)bounds;
-(void) Draw;

@end


@interface Circle: Shape

-(void) SetFillColor:(ShapeColor)fillcolor;
-(void) Draw;

@end


@interface Triangle: Shape

-(void) Draw;

@end


NSString* ColorName(ShapeColor colorname);
void DrawShape(id shapes[], int count);
