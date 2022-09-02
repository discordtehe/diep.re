// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADCONTAINERVIEW_H
#define VUNGLEADCONTAINERVIEW_H


#import <UIKit/UIKit.h>


@interface VungleAdContainerView : UIView

@property (retain, nonatomic) UIView *vungleContainedView; // ivar: _vungleContainedView


-(id)initWithContainedView:(id)arg0 ;
-(id)enclosedView;
-(void)updateConstraints;


@end


#endif