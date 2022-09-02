// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADREPORTINGOPTIONCOLLECTIONVIEWCELL_H
#define FBADREPORTINGOPTIONCOLLECTIONVIEWCELL_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface FBAdReportingOptionCollectionViewCell : UICollectionViewCell

@property (retain, nonatomic) UILabel *optionTitleLabel; // ivar: _optionTitleLabel
@property (copy, nonatomic) NSString *optionTitle; // ivar: _optionTitle


-(void)layoutSubviews;
-(void)setSelected:(BOOL)arg0 ;
-(id)unselectedBackgroundColor;
-(id)unselectedTextColor;
-(id)selectedBackgroundColor;
-(id)selectedTextColor;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
+(id)reuseId;


@end


#endif