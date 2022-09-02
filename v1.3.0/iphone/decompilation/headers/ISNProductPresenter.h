// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNPRODUCTPRESENTER_H
#define ISNPRODUCTPRESENTER_H


#import <Foundation/Foundation.h>

@protocol ISNPresentationStrategyP;
@protocol ISNPresentationStrategyP;

@interface ISNProductPresenter : NSObject

@property (retain, nonatomic) NSMapTable *viewControllersToPresentFrom; // ivar: _viewControllersToPresentFrom
@property (retain, nonatomic) NSObject<ISNPresentationStrategyP> *currentlyPresenting; // ivar: _currentlyPresenting
@property (retain, nonatomic) NSObject<ISNPresentationStrategyP> *strategy; // ivar: _strategy
@property (readonly, nonatomic, getter=isCurrentlyPresented) BOOL currentlyPresented;


-(id)init;
-(void)setViewControllerForProductType:(NSUInteger)arg0 viewController:(id)arg1 ;
-(id)viewControllerForProductType:(NSUInteger)arg0 ;
-(void)unSetViewControllerForProductType:(NSUInteger)arg0 ;
-(void)presentProduct:(NSUInteger)arg0 completionHandler:(id)arg1 ;
-(void)dismissProduct:(NSUInteger)arg0 completionHandler:(id)arg1 ;
-(id)presentedViewController;


@end


#endif