//
//  ConvertNSDataToHexadecimal.h
//  bitfinex
//
//  Created by Dmitri Nesterenko on 12/7/14.
//  Copyright (c) 2014 Dmitri Nesterenko. All rights reserved.
//

#ifndef bitfinex_ConvertNSDataToHexadecimal_h
#define bitfinex_ConvertNSDataToHexadecimal_h
#import <Foundation/Foundation.h>
#import "NSDataHexadecimal.h"
@interface ConvertNSDataToHexadecimal : NSObject

+ (NSString *) convertToHexadecimal:(NSData*)data;

@end

#endif
