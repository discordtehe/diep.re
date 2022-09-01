// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSEVENTFILTER_H
#define ANSEVENTFILTER_H


#import <Foundation/Foundation.h>


@interface ANSEventFilter : NSObject



-(BOOL)shouldDiscardEvent:(id)arg0 betaToken:(id)arg1 installationID:(id)arg2 withFactor:(NSInteger)arg3 ;
-(BOOL)samplingEnabledForEventType:(id)arg0 ;
-(BOOL)shouldDiscardEventWithInstallationID:(id)arg0 forSamplingFactor:(NSInteger)arg1 ;
+(int)javaHashCodeForString:(id)arg0 ;


@end


#endif