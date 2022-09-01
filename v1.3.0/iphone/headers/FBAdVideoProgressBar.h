// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOPROGRESSBAR_H
#define FBADVIDEOPROGRESSBAR_H


#import <UIKit/UIKit.h>


@interface FBAdVideoProgressBar : UIView

@property (retain, nonatomic) UIView *progressView; // ivar: _progressView
@property (nonatomic) CGFloat cornerRadius; // ivar: _cornerRadius
@property (nonatomic) ? currentTime; // ivar: _currentTime
@property (nonatomic) ? duration; // ivar: _duration
@property (nonatomic) *CGColor progressColor;


-(id)init;
-(void)layoutSubviews;


@end


#endif