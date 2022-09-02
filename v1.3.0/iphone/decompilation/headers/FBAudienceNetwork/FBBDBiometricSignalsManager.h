// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDBIOMETRICSIGNALSMANAGER_H
#define FBBDBIOMETRICSIGNALSMANAGER_H


#import <Foundation/Foundation.h>

@class FBBDTouchSignalManager;
@protocol BotDetectionConfigProviderDelegate;

@interface FBBDBiometricSignalsManager : NSObject {
    id<BotDetectionConfigProviderDelegate> *_configDelegate;
    FBBDTouchSignalManager *_touchManager;
}




-(id)initWithSignals:(id)arg0 withConfigDelegate:(id)arg1 ;
-(id)biometricSignalsDict;
-(BOOL)isSignalEnabledForCurrentTierWithSignalFlags:(NSUInteger)arg0 ;


@end


#endif