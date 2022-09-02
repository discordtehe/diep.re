// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCNNEWSFRAMEVIEWLANDSCAPE_H
#define MCNNEWSFRAMEVIEWLANDSCAPE_H


#import <UIKit/UIKit.h>


@interface MCNNewsFrameViewLandscape : UIView {
    float _xOffset;
}




-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 xOffset:(float)arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;


@end


#endif