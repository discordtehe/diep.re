// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCLOADINGVIEW_H
#define TJCLOADINGVIEW_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface TJCLoadingView : NSObject

@property (nonatomic) float bgAlpha; // ivar: _bgAlpha
@property BOOL enabled; // ivar: _enabled
@property (retain, nonatomic) UIView *mainView; // ivar: _mainView
@property (weak, nonatomic) UIView *loadingBG; // ivar: _loadingBG
@property (weak, nonatomic) UIActivityIndicatorView *activityIndicator; // ivar: _activityIndicator
@property (weak, nonatomic) UILabel *loadingLabel; // ivar: _loadingLabel
@property (weak, nonatomic) UIView *containerView; // ivar: _containerView
@property (weak, nonatomic) UIView *fullBGView; // ivar: _fullBGView


-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)disable;
-(void)enable;
-(void)fade:(BOOL)arg0 ;
-(void)fadeIn;
-(void)fadeOut;


@end


#endif