// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEFLEXVIEWPRESENTATIONMANAGER_H
#define VUNGLEFLEXVIEWPRESENTATIONMANAGER_H


#import <Foundation/Foundation.h>

@protocol UIViewControllerTransitioningDelegate;

@interface VungleFlexViewPresentationManager : NSObject <UIViewControllerTransitioningDelegate>



@property (nonatomic) BOOL isInterstitial; // ivar: _isInterstitial
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithInterstitial:(BOOL)arg0 ;
-(id)animationControllerForDismissedController:(id)arg0 ;
-(id)animationControllerForPresentedController:(id)arg0 presentingController:(id)arg1 sourceController:(id)arg2 ;


@end


#endif