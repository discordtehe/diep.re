// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPROGRESSBAR_H
#define VUNGLEPROGRESSBAR_H


#import <UIKit/UIKit.h>


@interface VungleProgressBar : UIView

@property (nonatomic) float currentProgress; // ivar: _currentProgress


-(id)init;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)setProgress:(float)arg0 ;
+(BOOL)requiresConstraintBasedLayout;


@end


#endif