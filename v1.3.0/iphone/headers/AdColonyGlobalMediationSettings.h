// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYGLOBALMEDIATIONSETTINGS_H
#define ADCOLONYGLOBALMEDIATIONSETTINGS_H


#import <Foundation/Foundation.h>

@protocol MPMediationSettingsProtocol;

@interface AdColonyGlobalMediationSettings : NSObject <MPMediationSettingsProtocol>



@property (copy, nonatomic) NSString *customId; // ivar: _customId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


+(void)enableClientSideTestMode;
+(void)disableClientSideTestMode;


@end


#endif