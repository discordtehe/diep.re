// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJPLACEMENTDELEGATECPP_H
#define TJPLACEMENTDELEGATECPP_H


#import <Foundation/Foundation.h>

@protocol TJPlacementDelegate;

@interface TJPlacementDelegateCpp : NSObject <TJPlacementDelegate>



@property *TJPlacementListener listener; // ivar: _listener
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithListener:(struct TJPlacementListener *)arg0 ;
-(void)requestDidSucceed:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
-(void)contentIsReady:(id)arg0 ;
-(void)contentDidAppear:(id)arg0 ;
-(void)contentDidDisappear:(id)arg0 ;
-(void)placement:(id)arg0 didRequestPurchase:(id)arg1 productId:(id)arg2 ;
-(void)placement:(id)arg0 didRequestReward:(id)arg1 itemId:(id)arg2 quantity:(int)arg3 ;


@end


#endif