// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNPRODUCTPRESENTERJSHANDLER_H
#define ISNPRODUCTPRESENTERJSHANDLER_H


#import <Foundation/Foundation.h>

@class SupersonicAdsPublisher;
@class ISNProductPresenter;
@protocol ISNJSInterfaceHandlerP;

@interface ISNProductPresenterJSHandler : NSObject <ISNJSInterfaceHandlerP>



@property (readonly, weak, nonatomic) SupersonicAdsPublisher *publisherAgent; // ivar: _publisherAgent
@property (readonly, nonatomic) ISNProductPresenter *productPresenter; // ivar: _productPresenter
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPublisherAgent:(id)arg0 ;
-(void)invokeAPIWithJSParams:(id)arg0 ;
-(void)handleWebViewVisibility:(id)arg0 ;
-(void)presentWebViewForProduct:(NSUInteger)arg0 jsParams:(id)arg1 ;
-(void)dismissWebViewForProduct:(NSUInteger)arg0 jsParams:(id)arg1 ;
-(id)createPresentationStrategyFromJsParams:(id)arg0 ;
-(id)viewControllerConfigurationFromJsParams:(id)arg0 ;
-(id)standAloneViewConfigurationFromJsParams:(id)arg0 ;
-(void)sendEmptyCallbackToController:(id)arg0 ;
-(void)sendCallbackToController:(id)arg0 withParams:(id)arg1 ;
-(void)logInfo:(id)arg0 ;


@end


#endif