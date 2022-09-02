// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPJOYGLOBALMEDIATIONSETTINGS_H
#define TAPJOYGLOBALMEDIATIONSETTINGS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPMediationSettingsProtocol;

@interface TapjoyGlobalMediationSettings : NSObject <MPMediationSettingsProtocol>



@property (copy, nonatomic) NSString *sdkKey; // ivar: _sdkKey
@property (copy, nonatomic) NSMutableDictionary *connectFlags; // ivar: _connectFlags
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;




@end


#endif