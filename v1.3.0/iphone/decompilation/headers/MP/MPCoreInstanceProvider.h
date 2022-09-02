// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPCOREINSTANCEPROVIDER_H
#define MPCOREINSTANCEPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPCoreInstanceProvider : NSObject

@property (readonly, nonatomic) BOOL isMraidJavascriptAvailable;
@property (readonly, copy, nonatomic) NSString *mraidJavascript;
@property (retain, nonatomic) NSMutableDictionary *singletons; // ivar: _singletons
@property (retain, nonatomic) NSMutableDictionary *carrierInfo; // ivar: _carrierInfo
@property (nonatomic) int twitterDeepLinkStatus; // ivar: _twitterDeepLinkStatus


-(id)init;
-(id)singletonForClass:(Class)arg0 provider:(id)arg1 ;
-(void)keepObjectAliveForCurrentRunLoopIteration:(id)arg0 ;
-(void)performNoOp:(id)arg0 ;
-(void)initializeCarrierInfo;
-(void)updateCarrierInfoForCTCarrier:(id)arg0 ;
-(id)sharedMPGeolocationProvider;
-(id)buildCLLocationManager;
-(id)buildMPAdAlertManagerWithDelegate:(id)arg0 ;
-(id)buildMPAdAlertGestureRecognizerWithTarget:(id)arg0 action:(SEL)arg1 ;
-(NSUInteger)appTransportSecuritySettings;
-(id)sharedCarrierInfo;
-(NSInteger)currentRadioAccessTechnology;
+(id)sharedProvider;


@end


#endif