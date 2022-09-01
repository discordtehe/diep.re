// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCTABUTTON_H
#define FBADCTABUTTON_H


#import <UIKit/UIKit.h>


@interface FBAdCTAButton : UIButton

@property (retain, nonatomic) UIView *backgroundView; // ivar: _backgroundView
@property (nonatomic) NSUInteger ctaButtonStyle; // ivar: _ctaButtonStyle


-(id)init;
-(id)initWithStyle:(NSUInteger)arg0 ;
-(void)setupWithStyle:(NSUInteger)arg0 ;
-(void)setupBackgroundLayerWithColor:(id)arg0 cornerRadius:(CGFloat)arg1 shadowEnabled:(BOOL)arg2 animationDuration:(CGFloat)arg3 ;
-(void)layoutSubviews;
-(id)darkColor;
-(id)lightColor;


@end


#endif