// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDMANAGER_H
#define GADOMIDMANAGER_H


#import <Foundation/Foundation.h>

@protocol GADOMIDAdSessionRegistryStateObserver;
@protocol GADOMIDStateWatcherDelegate;

@interface GADOMIDManager : NSObject <GADOMIDAdSessionRegistryStateObserver, GADOMIDStateWatcherDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setup;
-(void)start;
-(void)stop;
-(void)appDidBecomeActive;
-(void)appDidResignActive;
-(void)adSessionRegistryDidBecomeActive;
-(void)adSessionRegistryDidResignActive;
-(void)adSessionDidBecomeActive:(id)arg0 ;
+(id)getInstance;


@end


#endif