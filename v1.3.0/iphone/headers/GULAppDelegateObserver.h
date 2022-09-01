// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULAPPDELEGATEOBSERVER_H
#define GULAPPDELEGATEOBSERVER_H


#import <Foundation/Foundation.h>


@interface GULAppDelegateObserver : NSObject {
    BOOL _isObserving;
}




-(void)observeUIApplication;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
+(id)sharedInstance;


@end


#endif