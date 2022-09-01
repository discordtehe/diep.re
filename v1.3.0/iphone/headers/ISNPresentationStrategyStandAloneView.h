// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNPRESENTATIONSTRATEGYSTANDALONEVIEW_H
#define ISNPRESENTATIONSTRATEGYSTANDALONEVIEW_H


#import <Foundation/Foundation.h>

@class ISNStandaloneViewPresentationConfiguration;
@protocol ISNPresentationStrategyP;

@interface ISNPresentationStrategyStandAloneView : NSObject <ISNPresentationStrategyP>



@property (retain, nonatomic) ISNStandaloneViewPresentationConfiguration *configuration; // ivar: _configuration
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithConfiguration:(id)arg0 ;
-(id)init;
-(BOOL)isPresented;
-(void)presentProductFromViewController:(id)arg0 product:(NSUInteger)arg1 completionHandler:(id)arg2 ;
-(void)dismissWithCompletionHandler:(id)arg0 ;
-(id)presentedViewController;
-(id)calcPresentingViewControllerWithViewInjectedViewController:(id)arg0 ;


@end


#endif