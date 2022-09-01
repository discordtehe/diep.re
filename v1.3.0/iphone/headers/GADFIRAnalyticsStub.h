// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFIRANALYTICSSTUB_H
#define GADFIRANALYTICSSTUB_H


#import <Foundation/Foundation.h>


@interface GADFIRAnalyticsStub : NSObject

@property (readonly, copy, nonatomic) NSString *googleAppID; // ivar: _googleAppID
@property (readonly, copy, nonatomic) NSString *analyticsAppID; // ivar: _analyticsAppID
@property (readonly, copy, nonatomic) NSString *appInstanceID; // ivar: _appInstanceID
@property (readonly, copy, nonatomic) NSString *adEventID; // ivar: _adEventID
@property (readonly, copy, nonatomic) NSString *origin; // ivar: _origin


-(void)logInternalEventWithOrigin:(id)arg0 name:(id)arg1 parameters:(id)arg2 ;
-(void)getScreenName:(*id)arg0 screenClass:(*id)arg1 ;
-(void)setScreenName:(id)arg0 screenClass:(id)arg1 ;
-(void)beginAdUnitExposure:(id)arg0 ;
-(void)endAdUnitExposure:(id)arg0 ;
-(void)setAnalyticsEnabled:(BOOL)arg0 ;


@end


#endif