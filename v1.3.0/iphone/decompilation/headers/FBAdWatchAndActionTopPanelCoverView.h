// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADWATCHANDACTIONTOPPANELCOVERVIEW_H
#define FBADWATCHANDACTIONTOPPANELCOVERVIEW_H


#import <UIKit/UIKit.h>


@interface FBAdWatchAndActionTopPanelCoverView : UIView

@property (weak, nonatomic) UIImageView *logoImageView; // ivar: _logoImageView
@property (weak, nonatomic) UILabel *titleView; // ivar: _titleView
@property (weak, nonatomic) UILabel *subtitleView; // ivar: _subtitleView


-(id)init;
-(id)initWithLogo:(id)arg0 mainTitle:(id)arg1 subtitle:(id)arg2 ;
-(void)setupViewsWithLogoImage:(id)arg0 mainTitle:(id)arg1 subtitle:(id)arg2 ;
-(void)setupLogoViewWithAdImage:(id)arg0 ;
-(void)setupTitleViewWithTitle:(id)arg0 ;
-(void)setupSubtitleViewWithSubtitle:(id)arg0 ;
-(void)layoutSubviews;


@end


#endif