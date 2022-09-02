// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEUPLOADOPERATION_H
#define VUNGLEUPLOADOPERATION_H


#import <CoreFoundation/CoreFoundation.h>

@class VungleNetworkOperation;

@interface VungleUploadOperation : VungleNetworkOperation

@property (copy, nonatomic) NSDictionary *content; // ivar: _content


// -(id)initWithURL:(id)arg0 content:(id)arg1 session:(id)arg2 taskSetupCompletionBlock:(id)arg3 taskCompletionBlock:(unk)arg4  ;
-(id)taskWithRequest:(id)arg0 session:(id)arg1 ;
-(void)prepareRequest:(id)arg0 ;
-(id)compressed;
-(id)getOperationContent;


@end


#endif