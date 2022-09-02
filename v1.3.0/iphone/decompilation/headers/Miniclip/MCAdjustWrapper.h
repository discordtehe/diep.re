// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADJUSTWRAPPER_H
#define MCADJUSTWRAPPER_H


#import <Foundation/Foundation.h>

@protocol AdjustDelegate;

@interface MCAdjustWrapper : NSObject <AdjustDelegate>





-(void)intializeAdjustWithAppToken:(id)arg0 environment:(id)arg1 ;
-(void)adjustAttributionChanged:(id)arg0 ;
-(void)trackSessionStart;
-(void)trackSessionEnd;
-(void)trackSimpleEvent:(id)arg0 ;
-(void)trackRevenueEvent:(id)arg0 revenue:(CGFloat)arg1 currency:(id)arg2 receipt:(id)arg3 transactionId:(id)arg4 ;
-(void)trackDeepLink:(id)arg0 ;


@end


#endif