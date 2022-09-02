// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBVIEWCONTROLLERMAP_H
#define GADWEBVIEWCONTROLLERMAP_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADWebViewControllerMap : NSObject {
    NSMutableSet *_webViewControllers;
    NSObject<OS_dispatch_queue> *_lockQueue;
}




-(id)init;
-(void)addWebViewController:(id)arg0 ;
-(void)removeWebViewController:(id)arg0 ;
-(id)webViewConfigurationForMainDocumentURL:(id)arg0 context:(*id)arg1 ;
+(id)sharedInstance;


@end


#endif