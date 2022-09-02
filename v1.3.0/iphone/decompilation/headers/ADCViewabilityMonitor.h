// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCVIEWABILITYMONITOR_H
#define ADCVIEWABILITYMONITOR_H


#import <Foundation/Foundation.h>


@interface ADCViewabilityMonitor : NSObject {
    BOOL _polling;
    BOOL _advancedMeasurement;
    NSString *_sessionID;
    CGFloat _lastViewablePercentage;
    CGFloat _lastViewableVolume;
    id *_handler;
}




-(id)initWithSessionID:(id)arg0 advancedMeasurementEnabled:(BOOL)arg1 viewabilityUpdateHandler:(id)arg2 ;
-(CGFloat)checkCurrentViewablePercentage;
-(CGFloat)standardVisibilityCheck;
-(CGFloat)advancedVisibilityCheck;
-(void)getSuperviewHiddenRects:(id)arg0 forRect:(struct CGRect )arg1 forView:(id)arg2 forWindow:(id)arg3 checkNonClippingSubViews:(BOOL)arg4 ;
-(void)getSubviewHiddenRects:(id)arg0 forRect:(struct CGRect )arg1 forView:(id)arg2 forWindow:(id)arg3 superViewWindowRect:(struct CGRect )arg4 ignoreIfContainedInSuperview:(BOOL)arg5 ;
-(void)getSubviewHiddenRectsInsideOfSuperviewBounds:(id)arg0 forRect:(struct CGRect )arg1 forView:(id)arg2 forWindow:(id)arg3 superViewWindowRect:(struct CGRect )arg4 ;
-(id)subtractRect:(struct CGRect )arg0 fromRect:(struct CGRect )arg1 ;
-(struct CGRect )roundUpCGrect:(struct CGRect )arg0 ;
-(struct CGRect )rectBetweenRect1:(struct CGRect )arg0 andRect2:(struct CGRect )arg1 withRemainder:(struct CGRect *)arg2 alongEdge:(unsigned int)arg3 ;
-(BOOL)isViewHidden:(id)arg0 ;
-(BOOL)isViewTransparent:(id)arg0 ;
-(void)onApplicationWillResignActive;
-(void)onApplicationDidBecomeActive;
-(void)finish;
-(void)dealloc;


@end


#endif