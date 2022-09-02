// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCVIDEOTIMER_H
#define ADCVIDEOTIMER_H



@class ADCView;
@class ADCShadowedLabel;

@interface ADCVideoTimer : ADCView {
    ADCShadowedLabel *_label;
    CGFloat _progress;
}




-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)update:(CGFloat)arg0 withTotal:(CGFloat)arg1 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)dealloc;


@end


#endif