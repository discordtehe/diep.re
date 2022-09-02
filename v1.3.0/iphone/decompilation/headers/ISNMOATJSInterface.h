// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNMOATJSINTERFACE_H
#define ISNMOATJSINTERFACE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class SupersonicAdsPublisher;
@protocol ISNMOATManagerDelegate;

@interface ISNMOATJSInterface : NSObject <ISNMOATManagerDelegate>



@property (readonly, weak, nonatomic) SupersonicAdsPublisher *publisherAgent; // ivar: _publisherAgent
@property (retain, nonatomic) NSMutableDictionary *controllerCallbacks; // ivar: _controllerCallbacks
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPublisherAgent:(id)arg0 ;
-(void)invokeAPIWithParams:(id)arg0 adView:(id)arg1 ;
-(id)moatMethodNameFromParams:(id)arg0 ;
-(id)moatMethodParamsFromParams:(id)arg0 ;
-(void)sendSuccessCallbackToControllerForMethodName:(id)arg0 ;
-(void)sendErrorCallbackToControllerForMethodName:(id)arg0 errorReason:(id)arg1 ;
-(void)moatManagerStartedTracking;
-(void)moatManagerStoppedTracking;
-(void)moatManagerFailedToStartTrackingWithReason:(id)arg0 ;


@end


#endif