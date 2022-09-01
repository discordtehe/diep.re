// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCUSTOMSTOREPRODUCTVIEWCONTROLLER_H
#define TJCUSTOMSTOREPRODUCTVIEWCONTROLLER_H

@class UIPresentationController;

#import <StoreKit/StoreKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class TJCUIWebPageView;

@interface TJCustomStoreProductViewController : SKStoreProductViewController

@property (retain, nonatomic) NSString *style; // ivar: _style
@property (retain, nonatomic) NSDictionary *splitViewLayout; // ivar: _splitViewLayout
@property (retain, nonatomic) UIViewController *tjPresentingViewController; // ivar: _tjPresentingViewController
@property (retain, nonatomic) TJCUIWebPageView *presentingView; // ivar: _presentingView
@property (nonatomic) NSInteger presentingOrientation; // ivar: _presentingOrientation
@property (retain, nonatomic) UIPresentationController *presentationController; // ivar: _presentationController
@property (nonatomic) BOOL lockedDuringPresentation; // ivar: _lockedDuringPresentation


-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(void)orientationChanged:(id)arg0 ;
-(void)updateFrame;
-(void)updateFrameWithSize:(struct CGSize )arg0 ;
-(BOOL)appSupportsPortrait;
-(BOOL)shouldSupportLandscape;
-(void)showStoreWithView:(id)arg0 ;
-(void)showStore;
-(void)showStoreWhenPortrait:(id)arg0 ;
-(void)closeStore;


@end


#endif