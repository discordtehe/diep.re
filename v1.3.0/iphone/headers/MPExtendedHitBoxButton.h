// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPEXTENDEDHITBOXBUTTON_H
#define MPEXTENDEDHITBOXBUTTON_H


#import <UIKit/UIKit.h>


@interface MPExtendedHitBoxButton : UIButton

@property (nonatomic) UIEdgeInsets touchAreaInsets; // ivar: _touchAreaInsets


-(BOOL)pointInside:(struct CGPoint )arg0 withEvent:(id)arg1 ;


@end


#endif