// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDBUFFERMANAGER_H
#define CDBUFFERMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CDSoundEngine;

@interface CDBufferManager : NSObject {
    NSMutableDictionary *loadedBuffers;
    NSMutableArray *freedBuffers;
    CDSoundEngine *soundEngine;
    int nextBufferId;
}




-(id)initWithEngine:(id)arg0 ;
-(void)dealloc;
-(int)bufferForFile:(id)arg0 create:(BOOL)arg1 ;
-(void)releaseBufferForFile:(id)arg0 ;


@end


#endif