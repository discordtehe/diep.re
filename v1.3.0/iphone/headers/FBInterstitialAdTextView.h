// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADTEXTVIEW_H
#define FBINTERSTITIALADTEXTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface FBInterstitialAdTextView : UIView

@property (retain, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (retain, nonatomic) UILabel *subtitleLabel; // ivar: _subtitleLabel
@property (nonatomic) NSInteger textAlignment; // ivar: _textAlignment
@property (copy, nonatomic) UIColor *titleTextColor; // ivar: _titleTextColor
@property (copy, nonatomic) UIColor *subtitleTextColor; // ivar: _subtitleTextColor
@property (copy, nonatomic) NSString *title; // ivar: _title
@property (copy, nonatomic) NSString *subtitle; // ivar: _subtitle
@property (nonatomic) NSInteger maxLinesForTitle; // ivar: _maxLinesForTitle
@property (nonatomic) NSInteger maxLinesForSubtitle; // ivar: _maxLinesForSubtitle
@property (nonatomic) NSInteger titleFontSize; // ivar: _titleFontSize
@property (nonatomic) NSInteger subtitleFontSize; // ivar: _subtitleFontSize
@property (nonatomic) CGFloat verticalTextSpacing; // ivar: _verticalTextSpacing


-(id)init;
-(void)layoutSubviews;
-(void)setAlignment:(NSInteger)arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;


@end


#endif