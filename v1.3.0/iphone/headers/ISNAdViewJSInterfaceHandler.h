// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNADVIEWJSINTERFACEHANDLER_H
#define ISNADVIEWJSINTERFACEHANDLER_H


#import <Foundation/Foundation.h>

@class SupersonicAdsPublisher;
@protocol ISNJSInterfaceHandlerP;
@protocol ISNAdViewDelegate;
@protocol ISNAdViewCommunicatorP;

@interface ISNAdViewJSInterfaceHandler : NSObject <ISNJSInterfaceHandlerP, ISNAdViewDelegate>



@property (readonly, weak, nonatomic) SupersonicAdsPublisher *publisherAgent; // ivar: _publisherAgent
@property (weak, nonatomic) NSObject<ISNAdViewCommunicatorP> *isnAdView; // ivar: _isnAdView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPublisherAgent:(id)arg0 ;
-(id)methodNameFromParams:(id)arg0 ;
-(id)methodParamsFromParams:(id)arg0 ;
-(void)invokeAPIWithJSParams:(id)arg0 ;
-(void)sendCallbackToController:(id)arg0 withParams:(id)arg1 ;
-(void)didReceiveMessageFromAdView:(id)arg0 params:(id)arg1 ;
-(void)didReceiveMessageFromAdViewWithArray:(id)arg0 params:(id)arg1 ;


@end


#endif