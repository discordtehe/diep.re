// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCLOGGINGAPI_H
#define ADCLOGGINGAPI_H


#import <Foundation/Foundation.h>


@interface ADCLoggingAPI : NSObject



-(void)logPublicError:(struct ? )arg0 ;
-(void)logPublicWarn:(struct ? )arg0 ;
-(void)logPublicInfo:(struct ? )arg0 ;
-(void)logPublicTrace:(struct ? )arg0 ;
-(void)logPrivateError:(struct ? )arg0 ;
-(void)logPrivateWarn:(struct ? )arg0 ;
-(void)logPrivateInfo:(struct ? )arg0 ;
-(void)logPrivateTrace:(struct ? )arg0 ;
+(void)registerHandlers;
+(void)load;


@end


#endif