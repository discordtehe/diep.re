// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBSTOREPRODUCTVIEWCONTROLLER_H
#define FBSTOREPRODUCTVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <StoreKit/StoreKit.h>
#import <Foundation/Foundation.h>

@class FBAdWeakProxy;
@protocol SKStoreProductViewControllerDelegate;
@protocol FBStoreProductViewControllerDelegate;

@interface FBStoreProductViewController : UIViewController <SKStoreProductViewControllerDelegate>

 {
    NSMutableArray *_storeKitControllersInProgress;
    SKStoreProductViewController *_storeKitController;
    UIView *_navigationBarView;
    FBAdWeakProxy *_weakProxy;
    NSDictionary *_loadParameters;
    NSUInteger _maxNumberOfAttempts;
    CGFloat _delayBetweenAttempts;
    id *_loadCompletionBlock;
    CGFloat _loadProductFinishedTime;
    CGFloat _presentedTime;
    CGFloat _dismissedTime;
    BOOL _loadCompleted;
    NSInteger _orientationWhenPresented;
    BOOL _viewHasAppeared;
    BOOL _viewHasLayedOutSubviews;
}


@property (readonly, nonatomic) SKStoreProductViewController *createStoreProductViewController;
@property (weak, nonatomic) NSObject<FBStoreProductViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) BOOL loadWasSuccessful; // ivar: _loadWasSuccessful
@property (readonly, nonatomic) NSUInteger loadAttemptsCount; // ivar: _loadAttemptsCount
@property (readonly, nonatomic) NSUInteger loadAttemptThatSucceeded; // ivar: _loadAttemptThatSucceeded
@property (readonly, nonatomic) CGFloat timeSpent;
@property (readonly, nonatomic) CGFloat timeSpentBeforeLoad;
@property (readonly, nonatomic) CGFloat timeSpentAfterLoad;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithNibName:(id)arg0 bundle:(id)arg1 ;
-(id)init;
-(void)dealloc;
-(void)_dismissStoreKitControllerIfPresented:(id)arg0 completion:(id)arg1 ;
-(void)_loadCompletedWithResult:(BOOL)arg0 error:(id)arg1 duration:(CGFloat)arg2 loadAttempt:(NSUInteger)arg3 storeKitController:(id)arg4 ;
-(id)_createAndPrepareStoreProductViewController;
-(void)_scheduleAnotherLoad;
-(void)_timeoutAfterDelay;
-(void)loadProductWithParameters:(id)arg0 completionBlock:(id)arg1 ;
-(void)reliablyLoadProductWithParameters:(id)arg0 completionBlock:(id)arg1 ;
-(void)loadProductWithParameters:(id)arg0 numberOfAttempts:(int)arg1 delayBetweenAttempts:(CGFloat)arg2 timeoutAfterDelay:(CGFloat)arg3 completionBlock:(id)arg4 ;
-(id)_navigationBarView;
-(void)loadView;
-(NSInteger)preferredInterfaceOrientationForPresentation;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotate;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(id)_dimmingViewBehindModal;
-(void)_presentProductViewController;
-(void)_dismissProductViewControllerWithCompletionBlock:(id)arg0 ;
-(void)productViewControllerDidAppear:(id)arg0 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)_didPressCancel;
-(void)_notifyProductViewControllerDidFinish;


@end


#endif