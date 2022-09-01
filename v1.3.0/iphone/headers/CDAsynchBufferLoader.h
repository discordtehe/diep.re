// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDASYNCHBUFFERLOADER_H
#define CDASYNCHBUFFERLOADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CDSoundEngine;

@interface CDAsynchBufferLoader : NSOperation {
    NSArray *_loadRequests;
    CDSoundEngine *_soundEngine;
}




-(id)init:(id)arg0 soundEngine:(id)arg1 ;
-(void)main;
-(void)dealloc;


@end


#endif