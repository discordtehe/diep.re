// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOICECOLLECTIONVIEWCELL_H
#define FBADCHOICECOLLECTIONVIEWCELL_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface FBAdChoiceCollectionViewCell : UICollectionViewCell

@property (copy, nonatomic) NSString *optionTitle; // ivar: _optionTitle
@property (copy, nonatomic) NSString *optionSubtitle; // ivar: _optionSubtitle
@property (retain, nonatomic) UILabel *optionTitleLabel; // ivar: _optionTitleLabel
@property (retain, nonatomic) UILabel *optionSubtitleLabel; // ivar: _optionSubtitleLabel
@property (retain, nonatomic) UIView *optionIconView; // ivar: _optionIconView
@property (nonatomic) NSInteger flowType; // ivar: _flowType
@property (nonatomic) NSInteger style; // ivar: _style
@property (readonly, nonatomic) CGSize preferredSize;


-(void)prepareForReuse;
-(void)layoutSubviews;
-(void)configureForFlowType:(NSInteger)arg0 layoutType:(NSInteger)arg1 ;
+(id)reuseId;


@end


#endif