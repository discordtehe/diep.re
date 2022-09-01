// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOICESVIEW_H
#define FBADCHOICESVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdChoicesInternalView;
@class FBNativeAdBase;
@protocol FBNativeAdViewImmutable;
@protocol FBAdSafariViewControllerDelegate;
@protocol FBAdChoicesViewDelegate;

@interface FBAdChoicesView : UIView <FBNativeAdViewImmutable, FBAdSafariViewControllerDelegate>



@property (retain, nonatomic) FBAdChoicesInternalView *internalView; // ivar: _internalView
@property (weak, nonatomic) NSObject<FBAdChoicesViewDelegate> *delegate; // ivar: _delegate
@property (readonly, weak, nonatomic) UILabel *label;
@property (nonatomic, getter=isBackgroundShown) BOOL backgroundShown; // ivar: _backgroundShown
@property (readonly, nonatomic, getter=isExpandable) BOOL expandable;
@property (weak, nonatomic) FBNativeAdBase *nativeAd; // ivar: _nativeAd
@property (nonatomic) NSUInteger corner; // ivar: _corner
@property (nonatomic) UIEdgeInsets insets; // ivar: _insets
@property (weak, nonatomic) UIViewController *rootViewController;
@property (readonly, nonatomic) NSUInteger nativeAdViewTag;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setupInternals;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithNativeAd:(id)arg0 ;
-(id)initWithNativeAd:(id)arg0 expandable:(BOOL)arg1 ;
-(id)initWithNativeAd:(id)arg0 expandable:(BOOL)arg1 attributes:(id)arg2 ;
-(id)initWithViewController:(id)arg0 inlineClientToken:(id)arg1 adChoicesIcon:(id)arg2 adChoicesLinkURL:(id)arg3 adChoicesText:(id)arg4 attributes:(id)arg5 expandable:(BOOL)arg6 ;
-(void)updateFrameFromSuperview;
-(void)updateFrameFromSuperview:(NSUInteger)arg0 ;
-(void)updateFrameFromSuperview:(NSUInteger)arg0 insets:(struct UIEdgeInsets )arg1 ;
-(void)updateInternalUI;
-(void)updateInternalFrame:(struct CGRect )arg0 ;
-(void)checkInvalidCorner:(NSUInteger)arg0 ;
-(id)hitTest:(struct CGPoint )arg0 withEvent:(id)arg1 ;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerCompleted:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(void)setFrame:(struct CGRect )arg0 ;
+(void)initialize;


@end


#endif