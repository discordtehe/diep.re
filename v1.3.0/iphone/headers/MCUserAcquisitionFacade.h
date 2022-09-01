// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCUSERACQUISITIONFACADE_H
#define MCUSERACQUISITIONFACADE_H


#import <Foundation/Foundation.h>

@protocol MCUserAcquisitionDelegateProtocol;
@protocol MCUserAcquisitionDelegateProtocol;

@interface MCUserAcquisitionFacade : NSObject <MCUserAcquisitionDelegateProtocol>

 {
    id<MCUserAcquisitionDelegateProtocol> *mDelegate;
    BOOL _logging;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)setLogging:(BOOL)arg0 ;
-(void)registerDelegate:(id)arg0 ;
-(void)unregisterDelegate:(id)arg0 ;
-(void)trackVirtualClick:(id)arg0 ;
-(BOOL)shouldHandleURL:(id)arg0 ;
-(void)intializeWithAppToken:(id)arg0 ;
-(void)trackSessionStart;
-(void)trackSessionEnd;
-(void)trackSimpleEvent:(id)arg0 ;
-(void)trackRevenueEvent:(id)arg0 revenue:(CGFloat)arg1 currency:(id)arg2 receipt:(id)arg3 transactionId:(id)arg4 ;
-(void)trackDeepLink:(id)arg0 ;
+(id)sharedMCUserAcquisitionFacade;


@end


#endif