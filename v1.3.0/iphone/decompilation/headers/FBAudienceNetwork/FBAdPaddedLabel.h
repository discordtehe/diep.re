// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPADDEDLABEL_H
#define FBADPADDEDLABEL_H


#import <UIKit/UIKit.h>


@interface FBAdPaddedLabel : UILabel

@property (nonatomic) UIEdgeInsets textInsets; // ivar: _textInsets


-(void)drawTextInRect:(struct CGRect )arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;


@end


#endif