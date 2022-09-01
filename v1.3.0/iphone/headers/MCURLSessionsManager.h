// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCURLSESSIONSMANAGER_H
#define MCURLSESSIONSMANAGER_H


#import <Foundation/Foundation.h>

@class MCURLSessionDelegate;

@interface MCURLSessionsManager : NSObject {
    MCURLSessionDelegate *_defaultDelegate;
    MCURLSessionDelegate *_backgroundDelegate;
}


@property (copy) id *backgroundSessionCompletionHandler; // ivar: _backgroundSessionCompletionHandler


-(id)init;
-(void)dealloc;
-(id)dataTaskWithRequest:(id)arg0 forHttpConnection:(struct shared_ptr<mc::HttpConnectionApple> )arg1 useBackgroundSession:(BOOL)arg2 ;
-(?)dataTaskWithRequestforHttpConnection;
-(id)downloadTaskWithRequest:(id)arg0 forHttpConnection:(struct shared_ptr<mc::HttpConnectionApple> )arg1 useBackgroundSession:(BOOL)arg2 ;
+(id)sharedInstance;


@end


#endif