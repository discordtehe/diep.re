// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADKVOCONTROLLER_H
#define FBADKVOCONTROLLER_H


#import <Foundation/Foundation.h>


@interface FBAdKVOController : NSObject {
    NSMapTable *_objectInfosMap;
    _opaque_pthread_mutex_t _lock;
}


@property (readonly, weak, nonatomic) id *observer; // ivar: _observer


-(id)initWithObserver:(id)arg0 retainObserved:(BOOL)arg1 ;
-(id)initWithObserver:(id)arg0 ;
-(void)dealloc;
-(id)debugDescription;
-(void)_observe:(id)arg0 info:(id)arg1 ;
-(void)_unobserve:(id)arg0 info:(id)arg1 ;
-(void)_unobserve:(id)arg0 ;
-(void)_unobserveAll;
-(void)observe:(id)arg0 keyPath:(id)arg1 options:(NSUInteger)arg2 block:(id)arg3 ;
-(void)observe:(id)arg0 keyPaths:(id)arg1 options:(NSUInteger)arg2 block:(id)arg3 ;
-(void)observe:(id)arg0 keyPath:(id)arg1 options:(NSUInteger)arg2 action:(SEL)arg3 ;
-(void)observe:(id)arg0 keyPaths:(id)arg1 options:(NSUInteger)arg2 action:(SEL)arg3 ;
-(void)observe:(id)arg0 keyPath:(id)arg1 options:(NSUInteger)arg2 context:(*void)arg3 ;
-(void)observe:(id)arg0 keyPaths:(id)arg1 options:(NSUInteger)arg2 context:(*void)arg3 ;
-(void)unobserve:(id)arg0 keyPath:(id)arg1 ;
-(void)unobserve:(id)arg0 ;
-(void)unobserveAll;
+(id)controllerWithObserver:(id)arg0 ;


@end


#endif