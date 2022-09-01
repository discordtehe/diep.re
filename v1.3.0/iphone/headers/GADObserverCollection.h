// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOBSERVERCOLLECTION_H
#define GADOBSERVERCOLLECTION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADObserverCollection : NSObject {
    NSMutableSet *_observers;
}




-(id)init;
-(void)dealloc;
-(void)addObserverForName:(id)arg0 object:(id)arg1 queue:(id)arg2 usingBlock:(id)arg3 ;


@end


#endif