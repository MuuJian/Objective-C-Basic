//
//  People.m
//  OC
//
//  Created by mumu on 16/7/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#import "People.h"


@interface People()

@property(nonatomic, strong)NSMutableDictionary* peoplecar_;
@end


@implementation People

-(void) setValue:(id)value forUndefinedKey:(nonnull NSString *)key
{
	if(!key || [key isEqualToString:@""])
		return;
	if(!_peoplecar_)
	{
		_peoplecar_ = [NSMutableDictionary dictionary];
	}
	[_peoplecar_ setValue:value forKey:key];
}

-(id) valueForUndefinedKey:(NSString *)key
{
	if(!key || [key isEqualToString:@""])
		return nil;
	return [_peoplecar_ valueForKey:key];
}
@end
