// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCACHEMONITOR_H
#define GADCACHEMONITOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;
@class GADJSContext;

@interface GADCacheMonitor : NSObject {
    GADObserverCollection *_observers;
    GADJSContext *_reporter;
    NSMutableDictionary *_cacheIDResourceBuffers;
    NSMutableDictionary *_cacheIDResourceBufferObservers;
}




-(id)initWithMessageSource:(id)arg0 reporter:(id)arg1 ;
-(void)handleCachedResourceStatusCheckAction:(id)arg0 ;
-(void)handleCacheResourceAction:(id)arg0 ;
-(void)handleCleanupCacheDirectoryAction;
-(void)handleRemoveResourceAction:(id)arg0 ;
-(void)observeResourceBuffer:(id)arg0 cacheID:(id)arg1 requestID:(id)arg2 ;
-(void)handleResourceBuffer:(id)arg0 notification:(id)arg1 cacheID:(id)arg2 requestID:(id)arg3 ;
-(void)notifyCacheID:(id)arg0 responseHeaders:(id)arg1 fileURL:(id)arg2 status:(id)arg3 requestID:(id)arg4 error:(id)arg5 ;


@end


#endif