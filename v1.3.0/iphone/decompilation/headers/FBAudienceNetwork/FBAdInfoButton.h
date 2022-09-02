// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADINFOBUTTON_H
#define FBADINFOBUTTON_H


#import <UIKit/UIKit.h>


@interface FBAdInfoButton : UIButton

@property (retain, nonatomic) UIColor *iconColor; // ivar: _iconColor
@property (nonatomic) BOOL renderAsAudienceNetworkLogo; // ivar: _renderAsAudienceNetworkLogo


-(id)init;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)drawInfoIconInRect:(struct CGRect )arg0 iconColor:(id)arg1 ;
-(void)drawAudienceNetworkLogoInRect:(struct CGRect )arg0 iconColor:(id)arg1 ;


@end


#endif