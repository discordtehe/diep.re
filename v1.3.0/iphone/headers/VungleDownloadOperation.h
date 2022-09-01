// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEDOWNLOADOPERATION_H
#define VUNGLEDOWNLOADOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleNetworkOperation;

@interface VungleDownloadOperation : VungleNetworkOperation

@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (readonly, copy, nonatomic) NSURL *localFileURL; // ivar: _localFileURL


// -(id)initWithURL:(id)arg0 fileURL:(id)arg1 session:(id)arg2 placementID:(id)arg3 taskSetupCompletionBlock:(id)arg4 taskCompletionBlock:(unk)arg5  ;
-(id)taskWithRequest:(id)arg0 session:(id)arg1 ;


@end


#endif