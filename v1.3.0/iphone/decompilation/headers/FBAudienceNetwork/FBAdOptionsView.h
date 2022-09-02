// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADOPTIONSVIEW_H
#define FBADOPTIONSVIEW_H

@protocol FBAdOptionsViewDelegate;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdReportingCoordinator;
@class FBNativeAdBase;
@protocol FBAdSafariViewControllerDelegate;

@interface FBAdOptionsView : UIView <FBAdSafariViewControllerDelegate>



@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (weak, nonatomic) NSObject<FBAdOptionsViewDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) FBNativeAdBase *nativeAd; // ivar: _nativeAd
@property (retain, nonatomic) UIColor *foregroundColor; // ivar: _foregroundColor
@property (nonatomic) BOOL useSingleIcon; // ivar: _useSingleIcon
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)setupTapRecognizer;
-(void)handleTap:(id)arg0 ;
-(BOOL)shouldRenderANLogo;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)drawBothIconsWithFrame:(struct CGRect )arg0 color:(id)arg1 ;
-(void)drawSingleIconWithFrame:(struct CGRect )arg0 color:(id)arg1 ;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerCompleted:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;


@end


#endif