//
//  Use this file to import your target's public headers that you would like to expose to Swift.
// Got hints for this from here http://stackoverflow.com/questions/26920071/testing-a-combined-objective-c-swift-application-resulting-in-unresolved-identif
//

#ifndef CryptoString_Bridging_Header_h
#define CryptoString_Bridging_Header_h

#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>
#import "HMAC.h"
#import "ConvertNSDataToHexadecimal.h"

#endif