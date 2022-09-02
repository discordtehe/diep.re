// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SUPERSONICADSVIEWCONTROLLER_H
#define SUPERSONICADSVIEWCONTROLLER_H


#import <Foundation/Foundation.h>

@class ISAbstractViewController;
@class SupersonicAdsView;
@protocol UIWebViewDelegate;
@protocol UIGestureRecognizerDelegate;
@protocol UIScrollViewDelegate;
@protocol SKStoreProductViewControllerDelegate;

@interface SupersonicAdsViewController : ISAbstractViewController <UIWebViewDelegate, UIGestureRecognizerDelegate, UIScrollViewDelegate, SKStoreProductViewControllerDelegate>



@property (retain, nonatomic) SupersonicAdsView *supersonicAdsView; // ivar: _supersonicAdsView
@property (nonatomic) BOOL applicationHasStatusBar; // ivar: _applicationHasStatusBar
@property (nonatomic) NSUInteger currentType; // ivar: _currentType
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)isPresented;
-(void)dealloc;
-(void)show:(NSUInteger)arg0 ;
-(void)handleStatusBar;
-(void)viewDidLoad;
-(void)SuperSonicViewControllerDidChangeOrientation;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)forceCloseTimer;
-(void)hide;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(BOOL)prefersStatusBarHidden;


@end


#endif