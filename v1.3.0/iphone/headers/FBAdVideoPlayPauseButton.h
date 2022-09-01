// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOPLAYPAUSEBUTTON_H
#define FBADVIDEOPLAYPAUSEBUTTON_H


#import <UIKit/UIKit.h>


@interface FBAdVideoPlayPauseButton : UIButton

@property (nonatomic) NSInteger style; // ivar: _style


-(void)setHighlighted:(BOOL)arg0 ;
-(id)circleColor;
-(id)iconColor;
-(id)shadowColor;
-(void)drawRect:(struct CGRect )arg0 ;
+(void)initialize;
+(id)videoPlayPauseButton;


@end


#endif