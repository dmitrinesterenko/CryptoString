//
//  ConvertNSDataToHexadecimal.m
//  bitfinex
//
//  Created by Dmitri Nesterenko on 12/7/14.
//  Copyright (c) 2014 Dmitri Nesterenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConvertNSDataToHexadecimal.h"

@implementation ConvertNSDataToHexadecimal

+ (NSString *) convertToHexadecimal:(NSData*)data{
    return [data hexadecimalString];
}

@end
