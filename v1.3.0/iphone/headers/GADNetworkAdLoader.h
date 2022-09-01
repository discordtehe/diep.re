// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNETWORKADLOADER_H
#define GADNETWORKADLOADER_H


#import <Foundation/Foundation.h>


@interface GADNetworkAdLoader : NSObject



-(void)handleServerResponse:(id)arg0 body:(id)arg1 serverRequest:(id)arg2 completionHandler:(id)arg3 ;
-(void)loadWithServerRequest:(id)arg0 completionHandler:(id)arg1 ;
+(id)sharedURLSession;


@end


#endif