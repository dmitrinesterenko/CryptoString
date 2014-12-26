//
//  HMAC.h
//  bitfinex
//
//  Created by Dmitri Nesterenko on 12/7/14.
//  Copyright (c) 2014 Dmitri Nesterenko. All rights reserved.
//

#ifndef bitfinex_HMAC_h
#define bitfinex_HMAC_h
//This is necessary because someone has to include the base types
// thank you http://stackoverflow.com/questions/8994911/cannot-find-interface-declaration-for-nsobject
#include <UIKit/UIKit.h>
@interface HMAC : NSObject

- (NSData *) calculate:(NSString*)key andData:(NSString*)data;

@end

#endif

