//
//  NSDataHexadecimal.h
//  bitfinex
//
//  Ripped off  by Dmitri Nesterenko on 12/7/14 from http://stackoverflow.com/questions/1305225/best-way-to-serialize-a-nsdata-into-an-hexadeximal-string
//  Copyright (c) 2014 Dmitri Nesterenko. All rights reserved.
//

#ifndef bitfinex_NSDataHexadecimal_h
#define bitfinex_NSDataHexadecimal_h
#import <Foundation/Foundation.h>

@interface NSData (NSData_Conversion)

#pragma mark - String Conversion
- (NSString *)hexadecimalString;

@end


#endif
