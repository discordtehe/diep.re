// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNORIENTATIONJSHANDLER_H
#define ISNORIENTATIONJSHANDLER_H


#import <Foundation/Foundation.h>

@class SupersonicAdsPublisher;
@protocol ISNJSInterfaceHandlerP;

@interface ISNOrientationJSHandler : NSObject <ISNJSInterfaceHandlerP>



@property (readonly, weak, nonatomic) SupersonicAdsPublisher *publisherAgent; // ivar: _publisherAgent
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPublisherAgent:(id)arg0 ;
-(void)invokeAPIWithJSParams:(id)arg0 ;
-(void)setPresentationOrientation:(id)arg0 sendCallback:(BOOL)arg1 ;
-(void)setAppOrientation:(id)arg0 sendCallback:(BOOL)arg1 ;
-(void)updateOrientationManagerWithRequestedPresentationOrientation:(id)arg0 ;
-(void)sendEmptyCallbackToController:(id)arg0 ;
-(void)sendCallbackToController:(id)arg0 withParams:(id)arg1 ;
-(void)logInfo:(id)arg0 ;


@end


#endif