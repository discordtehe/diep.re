// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEBUTTON_H
#define VUNGLEBUTTON_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface VungleButton : UIButton

@property (nonatomic) UIEdgeInsets hitTestEdgeInsets; // ivar: _hitTestEdgeInsets
@property (retain, nonatomic) NSLayoutConstraint *expandWidthConstraint; // ivar: _expandWidthConstraint
@property (retain, nonatomic) NSLayoutConstraint *compressWidthConstraint; // ivar: _compressWidthConstraint


-(id)hitTest:(struct CGPoint )arg0 withEvent:(id)arg1 ;


@end


#endif