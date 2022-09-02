// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCRYPTOMPAPI_H
#define ADCCRYPTOMPAPI_H


#import <Foundation/Foundation.h>


@interface ADCCryptoMPAPI : NSObject



-(void)crc32:(struct ? )arg0 ;
-(void)sha1:(struct ? )arg0 ;
-(void)uuid:(struct ? )arg0 ;
+(void)registerHandlers;
+(void)load;


@end


#endif