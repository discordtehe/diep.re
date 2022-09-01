// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMAINWINDOWVIEW_H
#define GADMAINWINDOWVIEW_H


#import <UIKit/UIKit.h>

@class GADObserverCollection;

@interface GADMainWindowView : UIView {
    GADObserverCollection *_observers;
}




-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)didMoveToWindow;
-(id)hitTest:(struct CGPoint )arg0 withEvent:(id)arg1 ;
-(void)moveToMainWindow;


@end


#endif