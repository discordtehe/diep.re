// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCVIEWCONTROLLER_H
#define TJCVIEWCONTROLLER_H


#import <UIKit/UIKit.h>

@protocol TJCPlacementViewDelegate;

@interface TJCViewController : UIViewController

@property (weak, nonatomic) NSObject<TJCPlacementViewDelegate> *placementViewDelegate; // ivar: _placementViewDelegate


-(id)init;
-(void)removeView:(id)arg0 ;
-(BOOL)shouldAutorotateToInterfaceOrientation:(NSInteger)arg0 ;
-(void)updateViewsWithOrientation:(NSInteger)arg0 ;
-(void)moveViewToFront;
-(void)setSubview:(id)arg0 ;
-(void)notifyViewWillAppear;
-(void)notifyViewDidAppear;
-(void)notifyViewWillDisappear;
-(void)notifyViewDidDisappear;
-(void)dealloc;


@end


#endif