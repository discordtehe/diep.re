// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADROOTVIEWCONTROLLERPROVIDER_H
#define GADROOTVIEWCONTROLLERPROVIDER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;

@interface GADRootViewControllerProvider : NSObject {
    GADObserverCollection *_intermissionObservers;
    BOOL _intermissionInProgress;
    UIViewController *_nextViewController;
}


@property (readonly, weak, nonatomic) UIViewController *topViewController;
@property (readonly, weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController


-(void)updateViewController:(id)arg0 ;
-(void)updateIntermissionInProgress:(BOOL)arg0 ;
-(void)registerIntermissionMessageSource:(id)arg0 ;


@end


#endif