// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBACTIVITYINDICATORVIEW_H
#define MOPUBACTIVITYINDICATORVIEW_H


#import <UIKit/UIKit.h>


@interface MOPUBActivityIndicatorView : UIView

@property (retain, nonatomic) UIActivityIndicatorView *activityIndicator; // ivar: _activityIndicator
@property (retain, nonatomic) UIView *bgView; // ivar: _bgView


-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)startAnimating;
-(void)stopAnimating;
-(BOOL)isAnimating;


@end


#endif