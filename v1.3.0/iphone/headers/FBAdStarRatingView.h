// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSTARRATINGVIEW_H
#define FBADSTARRATINGVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdLabel;

@interface FBAdStarRatingView : UIView

@property (copy, nonatomic) NSArray *starViews; // ivar: _starViews
@property (copy, nonatomic) NSArray *starFillViews; // ivar: _starFillViews
@property (retain, nonatomic) FBAdLabel *ratingCountLabel; // ivar: _ratingCountLabel


-(id)initWithRating:(id)arg0 ratingCount:(id)arg1 ;
-(void)setupViewWithRating:(id)arg0 ratingCount:(id)arg1 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)layoutSubviews;


@end


#endif