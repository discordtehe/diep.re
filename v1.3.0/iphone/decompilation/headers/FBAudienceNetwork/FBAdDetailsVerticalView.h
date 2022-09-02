// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDETAILSVERTICALVIEW_H
#define FBADDETAILSVERTICALVIEW_H


#import <UIKit/UIKit.h>

@class FBAdLabel;

@interface FBAdDetailsVerticalView : UIView

@property (weak, nonatomic) UIImageView *iconView; // ivar: _iconView
@property (weak, nonatomic) FBAdLabel *subtitleLabel; // ivar: _subtitleLabel
@property (weak, nonatomic) FBAdLabel *titleLabel; // ivar: _titleLabel
@property (nonatomic) NSUInteger iconStyle; // ivar: _iconStyle


-(id)init;
-(id)initWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 iconStyle:(NSUInteger)arg3 ;
-(void)setupSubtitleViewWithText:(id)arg0 fontSize:(CGFloat)arg1 ;
-(void)setupTitleViewWithText:(id)arg0 fontSize:(CGFloat)arg1 ;
-(void)setupIconViewWithIconUrl:(id)arg0 ;
-(void)layoutSubviews;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;


@end


#endif