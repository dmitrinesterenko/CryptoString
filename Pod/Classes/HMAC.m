//
//  HMAC.m
//  bitfinex
//
//  Ripped by Dmitri Nesterenko on 12/7/14 from https://stackoverflow.com/questions/8458917/need-to-generate-hmac-sha256-hash-in-objective-c-as-in-java
// and thank you to this page http://iosprogrammingtutorials.com/objective-c-tutorial-1-how-to-declare-objective-c-methods/
//  Copyright (c) 2014 Dmitri Nesterenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "CryptoString-Bridging-Header.h"
#import "HMAC.h"

@implementation HMAC : NSObject

//TODO add an intiliazer that takes in the algorithm the client wishes to use

- (NSData *) calculate:(NSString *)key andData:(NSString *)data
{
    const char *cKey  = [key cStringUsingEncoding:NSASCIIStringEncoding];
    const char *cData = [data cStringUsingEncoding:NSASCIIStringEncoding];
    unsigned char cHMAC[CC_SHA384_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA384, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
    return [[NSData alloc] initWithBytes:cHMAC length:sizeof(cHMAC)];
}

@end
