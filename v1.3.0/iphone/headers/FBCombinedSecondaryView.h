// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBCOMBINEDSECONDARYVIEW_H
#define FBCOMBINEDSECONDARYVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdBase;
@class FBNativeAdViewAttributes;
@class FBAdOptionsView;
@protocol FBAdUpdatableView;

@interface FBCombinedSecondaryView : UIView <FBAdUpdatableView>



@property (weak, nonatomic) FBNativeAdBase *nativeAdBase; // ivar: _nativeAdBase
@property (weak, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (weak, nonatomic) UILabel *socialContextLabel; // ivar: _socialContextLabel
@property (weak, nonatomic) FBAdOptionsView *adOptionsView; // ivar: _adOptionsView
@property (nonatomic, getter=isRatingEnabled) BOOL ratingEnabled;
@property (nonatomic, getter=isSocialContextEnabled) BOOL socialContextEnabled;
@property (copy, nonatomic, getter=isRatingEnabledInternal) NSNumber *ratingEnabledInternal; // ivar: _ratingEnabledInternal
@property (copy, nonatomic, getter=isSocialContextEnabledInternal) NSNumber *socialContextEnabledInternal; // ivar: _socialContextEnabledInternal
@property (nonatomic, getter=isRatingEnabledLast) BOOL ratingEnabledLast; // ivar: _ratingEnabledLast
@property (nonatomic, getter=isSocialContextEnabledLast) BOOL socialContextEnabledLast; // ivar: _socialContextEnabledLast
@property (nonatomic) CGFloat additionalYSpacing; // ivar: _additionalYSpacing
@property (nonatomic, getter=isFullRatingView) BOOL fullRatingView; // ivar: _fullRatingView
@property (readonly, nonatomic) CGRect spareSpace;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 nativeAdBase:(id)arg1 attributes:(id)arg2 ;
-(void)createTitleLabel;
-(void)createAdOptionsView;
-(void)createSocialContextView;
-(void)createView;
-(void)updateView:(BOOL)arg0 ;
-(void)resetView;
-(void)updateTitle:(id)arg0 ;
-(void)layoutSubviews;


@end


#endif