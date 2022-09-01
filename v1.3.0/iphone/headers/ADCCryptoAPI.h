// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCRYPTOAPI_H
#define ADCCRYPTOAPI_H


#import <Foundation/Foundation.h>


@interface ADCCryptoAPI : NSObject



+(NSInteger)crc32ForInput:(id)arg0 ;
+(id)sha1ForInput:(id)arg0 ;
+(id)uuid:(int)arg0 ;


@end


#endif