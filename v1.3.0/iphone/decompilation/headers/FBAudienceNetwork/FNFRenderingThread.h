// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFRENDERINGTHREAD_H
#define FNFRENDERINGTHREAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FNFRenderingThread : NSThread

@property (readonly, nonatomic) NSRunLoop *runLoop; // ivar: _runLoop
@property (nonatomic) CGFloat priority; // ivar: _priority


-(id)initAllowingAppInactivePlayback:(BOOL)arg0 ;
-(void)_applicationDidBecomeActive:(id)arg0 ;
-(void)_applicationWillResignActive:(id)arg0 ;
-(void)addDisplayLink:(id)arg0 ;
-(void)performBlock:(id)arg0 ;
-(void)dispatchSync:(id)arg0 ;
-(void)_addDisplayLinkInternal:(id)arg0 ;
-(void)main;
+(id)renderingThreadAllowingAppInactivePlayback:(BOOL)arg0 ;


@end


#endif