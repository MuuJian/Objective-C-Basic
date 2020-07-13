//
//  Header.h
//  OC
//
//  Created by mumu on 13/7/20.
//  Copyright © 2020年 mumu. All rights reserved.
//

#ifndef BLOCKCODE_H
#define BLOCKCODE_H

#import <Foundation/Foundation.h>

int (^SquareBlock)(int num) = ^(int number){return number * number;};


#endif /* Header_h */
