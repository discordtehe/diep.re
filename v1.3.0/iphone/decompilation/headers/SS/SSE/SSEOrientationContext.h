// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSEORIENTATIONCONTEXT_H
#define SSEORIENTATIONCONTEXT_H


#import <Foundation/Foundation.h>


@interface SSEOrientationContext : NSObject



+(id)applicationOrientationDataWithAppDelegateDataIfAllowed:(BOOL)arg0 ;
+(NSInteger)deviceOrientation;
+(id)supportedInterfaceOrientations;
+(NSUInteger)topMostViewControllerOrientation;
+(NSUInteger)topMostViewControlleShouldAutorotate;
+(NSInteger)preferredInterfaceOrientationForPresentation;
+(NSInteger)statusBarOrientation;
+(NSUInteger)windowOrientation;
+(BOOL)isWindowOrientationOverrided;
+(NSInteger)orientationLockedState;
+(id)applicationOrientationData;
+(NSUInteger)supportedOrientationForViewController:(id)arg0 ;


@end


#endif