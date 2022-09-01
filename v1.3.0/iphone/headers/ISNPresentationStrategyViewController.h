// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNPRESENTATIONSTRATEGYVIEWCONTROLLER_H
#define ISNPRESENTATIONSTRATEGYVIEWCONTROLLER_H


#import <Foundation/Foundation.h>

@class ISNProductViewController;
@protocol ISNPresentationStrategyP;

@interface ISNPresentationStrategyViewController : NSObject <ISNPresentationStrategyP>



@property (retain, nonatomic) ISNProductViewController *productViewController; // ivar: _productViewController
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


@end


#endif