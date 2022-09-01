// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef _FBADKVOSHAREDCONTROLLER_H
#define _FBADKVOSHAREDCONTROLLER_H


#import <Foundation/Foundation.h>


@interface _FBAdKVOSharedController : NSObject {
    NSHashTable *_infos;
    _opaque_pthread_mutex_t _mutex;
}




-(id)init;
-(void)dealloc;
-(id)debugDescription;
-(void)observe:(id)arg0 info:(id)arg1 ;
-(void)unobserve:(id)arg0 info:(id)arg1 ;
-(void)unobserve:(id)arg0 infos:(id)arg1 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
+(id)sharedController;


@end


#endif