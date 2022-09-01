// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCNNEWSFRAMEVIEWPORTRAIT_H
#define MCNNEWSFRAMEVIEWPORTRAIT_H


#import <UIKit/UIKit.h>


@interface MCNNewsFrameViewPortrait : UIView {
    float _yOffset;
}




-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 yOffset:(float)arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;


@end


#endif