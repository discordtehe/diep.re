// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCUSERACQUISITIONIOSFACADE_H
#define MCUSERACQUISITIONIOSFACADE_H



@class MCUserAcquisitionFacade;
@class MCAdjustWrapper;

@interface MCUserAcquisitionIOSFacade : MCUserAcquisitionFacade {
    MCAdjustWrapper *mAdjustWrapper;
}




-(void)intializeWithAppToken:(id)arg0 ;
-(void)dealloc;
-(void)trackSessionStart;
-(void)trackSessionEnd;
-(void)trackSimpleEvent:(id)arg0 ;
-(void)trackRevenueEvent:(id)arg0 revenue:(CGFloat)arg1 currency:(id)arg2 receipt:(id)arg3 transactionId:(id)arg4 ;
-(void)trackDeepLink:(id)arg0 ;


@end


#endif