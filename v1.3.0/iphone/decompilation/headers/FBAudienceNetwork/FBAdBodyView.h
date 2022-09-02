// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBODYVIEW_H
#define FBADBODYVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdTimer;
@class FBNativeAdViewAttributes;
@class FBCombinedSecondaryView;
@class FBNativeAdBase;
@class FBAdOptionsView;
@protocol FBAdUpdatableView;

@interface FBAdBodyView : UIView <FBAdUpdatableView>



@property (retain, nonatomic) FBAdTimer *rotationTimer; // ivar: _rotationTimer
@property (nonatomic, getter=isRotated) BOOL rotated; // ivar: _rotated
@property (weak, nonatomic) UIView *firstContainerView; // ivar: _firstContainerView
@property (weak, nonatomic) UIView *secondContainerView; // ivar: _secondContainerView
@property (nonatomic) CGFloat miscMargin; // ivar: _miscMargin
@property (nonatomic) CGFloat titleHeight; // ivar: _titleHeight
@property (weak, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) FBCombinedSecondaryView *secondaryCombinedView; // ivar: _secondaryCombinedView
@property (weak, nonatomic) FBNativeAdBase *nativeAdBase; // ivar: _nativeAdBase
@property (weak, nonatomic) UILabel *titleLabel;
@property (weak, nonatomic) FBAdOptionsView *adOptionsView; // ivar: _adOptionsView
@property (weak, nonatomic) UILabel *descriptionLabel; // ivar: _descriptionLabel
@property (weak, nonatomic) UILabel *socialContextLabel;
@property (nonatomic, getter=isRatingEnabled) BOOL ratingEnabled;
@property (nonatomic, getter=isSocialContextEnabled) BOOL socialContextEnabled;
@property (nonatomic, getter=isAnimationEnabled) BOOL animationEnabled; // ivar: _animationEnabled
@property (nonatomic) CGFloat additionalYSpacing; // ivar: _additionalYSpacing
@property (nonatomic, getter=isFullRatingView) BOOL fullRatingView; // ivar: _fullRatingView
@property (readonly, nonatomic) CGRect spareSpace;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 nativeAd:(id)arg1 attributes:(id)arg2 ;
-(void)calculateValues;
-(void)updateView:(BOOL)arg0 ;
-(void)layoutSubviews;
-(struct CGRect )normalFrame;
-(struct CGRect )animationFrame;
-(struct CGRect )offscreenFrame;
-(void)willMoveToWindow:(id)arg0 ;
-(void)rotate;
-(void)animateRotationWithCurrentView:(id)arg0 otherView:(id)arg1 ;
-(BOOL)socialContextEnabled;
-(void)updateBodyTitle:(id)arg0 ;
-(void)dealloc;
-(void)sizeToFit;
+(void)initialize;


@end


#endif