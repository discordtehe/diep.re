// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCVIEW_H
#define ADCVIEW_H


#import <UIKit/UIKit.h>

@protocol ADCViewTouchDelegate;

@interface ADCView : UIView

@property (weak, nonatomic) NSObject<ADCViewTouchDelegate> *touchDelegate; // ivar: _touchDelegate


-(id)init;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif