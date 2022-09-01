// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSCREENNAMEREPORTER_H
#define GADSCREENNAMEREPORTER_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADScreenNameReporter : NSObject {
    GADObserverCollection *_observers;
    BOOL _hasSetScreenName;
    NSString *_adScreenName;
    NSString *_previousScreenName;
    NSString *_previousScreenClass;
}




-(id)initWithPresenter:(id)arg0 adScreenName:(id)arg1 ;
-(void)setScreenName;


@end


#endif