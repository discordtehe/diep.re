// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRINTERSTITIALCONTENTVIEW_H
#define FRINTERSTITIALCONTENTVIEW_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FRInterstitialContent;

@interface FRInterstitialContentView : NSObject

@property (retain) UIView *FRPlacementContentView; // ivar: _FRPlacementContentView
@property (retain) UIView *FRTranslucentView; // ivar: _FRTranslucentView
@property (retain) UIImageView *FRFrameView; // ivar: _FRFrameView
@property (retain) UIButton *FRCloseButton; // ivar: _FRCloseButton
@property (retain) UIButton *FRNoMoreTodayButton; // ivar: _FRNoMoreTodayButton
@property (retain) UIImageView *FRCreativeView; // ivar: _FRCreativeView
@property (retain) UITapGestureRecognizer *FRCreativeTapGestureRecognizer; // ivar: _FRCreativeTapGestureRecognizer
@property (retain) FRInterstitialContent *currentPlacementContent; // ivar: _currentPlacementContent
@property (retain) NSString *currentPlacementContentOrientation; // ivar: _currentPlacementContentOrientation
@property BOOL bShowStatusBarWhenDismiss; // ivar: _bShowStatusBarWhenDismiss


-(id)init;
-(void)toggleNoMoreToday;
-(void)handleCreativeClick:(id)arg0 ;
-(void)showContent:(id)arg0 ;
-(void)closePlacementContent;
-(void)dismissContent:(id)arg0 ;
+(id)sharedInstance;


@end


#endif