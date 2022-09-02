// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEROUTER_H
#define VUNGLEROUTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol VungleSDKDelegate;

@interface VungleRouter : NSObject <VungleSDKDelegate>



@property (retain) NSMapTable *delegates; // ivar: _delegates
@property (retain) NSMutableArray *initializingDelegates; // ivar: _initializingDelegates
@property (readonly) BOOL isInitialising; // ivar: _isInitialising
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)initWithAppId:(id)arg0 delegate:(id)arg1 ;
-(void)addDelegate:(id)arg0 ;
-(id)getDelegateForPlacement:(id)arg0 ;
-(void)removeDelegateForPlacementID:(id)arg0 ;
-(id)loadAd:(id)arg0 withDelegate:(id)arg1 ;
-(BOOL)playAd:(id)arg0 delegate:(id)arg1 extras:(id)arg2 ;
-(void)initialized:(BOOL)arg0 error:(id)arg1 ;
-(void)vungleWillShowAdForPlacementID:(id)arg0 ;
-(void)vungleWillCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)vungleDidCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)vungleAdPlayabilityUpdate:(BOOL)arg0 placementID:(id)arg1 error:(id)arg2 ;
-(void)vungleSDKDidInitialize;
-(void)vungleSDKFailedToInitializeWithError:(id)arg0 ;
+(id)sharedInstance;


@end


#endif