// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPJOYDELEGATECPP_H
#define TAPJOYDELEGATECPP_H


#import <Foundation/Foundation.h>

@protocol TJCVideoAdDelegate;

@interface TapjoyDelegateCpp : NSObject <TJCVideoAdDelegate>



@property BOOL connected; // ivar: _connected
@property *TJConnectListener connectListener; // ivar: _connectListener
@property *TJEarnedCurrencyListener earnedCurrencyListener; // ivar: _earnedCurrencyListener
@property *TJVideoListener videoListener; // ivar: _videoListener
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)onConnectSuccess:(id)arg0 ;
-(void)onConnectFailure:(id)arg0 ;
-(void)videoAdBegan;
-(void)videoAdClosed;
-(void)videoAdCompleted;
-(void)videoAdError:(id)arg0 ;
-(void)onEarnedCurrency:(id)arg0 ;
+(id)sharedInstance;


@end


#endif