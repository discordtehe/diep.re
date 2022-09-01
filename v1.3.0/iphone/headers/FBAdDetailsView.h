// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDETAILSVIEW_H
#define FBADDETAILSVIEW_H


#import <UIKit/UIKit.h>

@class FBAdLabel;
@class FBAdStarRatingView;

@interface FBAdDetailsView : UIView

@property (weak, nonatomic) UIImageView *iconView; // ivar: _iconView
@property (weak, nonatomic) FBAdLabel *subtitleLabel; // ivar: _subtitleLabel
@property (weak, nonatomic) FBAdLabel *titleLabel; // ivar: _titleLabel
@property (weak, nonatomic) FBAdStarRatingView *starRatingView; // ivar: _starRatingView
@property (nonatomic) NSUInteger style; // ivar: _style
@property (nonatomic) NSUInteger iconStyle; // ivar: _iconStyle


-(id)init;
-(id)initWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 ratingValue:(id)arg3 ratingCount:(id)arg4 style:(NSUInteger)arg5 iconStyle:(NSUInteger)arg6 ;
-(void)setupViewWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 ;
-(void)setupViewWithTitle:(id)arg0 iconURL:(id)arg1 ratingValue:(id)arg2 ratingCount:(id)arg3 ;
-(void)setupRatingViewWithValue:(id)arg0 ratingCount:(id)arg1 ;
-(void)setupTitleViewWithTitle:(id)arg0 fontSize:(CGFloat)arg1 ;
-(void)setupIconViewWithIconUrl:(id)arg0 ;
-(void)layoutSubviews;
-(void)detailedLayoutSubviews;
-(void)defaultLayoutSubviews;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(struct CGSize )intrinsicContentSize;
-(CGFloat)calculateHeightForWidth:(CGFloat)arg0 ;
-(CGFloat)iconSize;
-(CGFloat)iconMargin;
-(CGFloat)cornerRadius;


@end


#endif