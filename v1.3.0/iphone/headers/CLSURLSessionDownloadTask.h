// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSURLSESSIONDOWNLOADTASK_H
#define CLSURLSESSIONDOWNLOADTASK_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CLSURLSessionDataTask;
@protocol NSStreamDelegate;

@interface CLSURLSessionDownloadTask : CLSURLSessionDataTask <NSStreamDelegate>

 {
    NSOutputStream *_outputStream;
    NSURL *_targetURL;
}


@property (copy, nonatomic) id *downloadCompletionHandler; // ivar: _downloadCompletionHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(id)temporaryFileURL;
-(void)cleanup;
-(void)complete;
-(void)writeDataToStream:(id)arg0 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)completeForError;
-(void)stream:(id)arg0 handleEvent:(NSUInteger)arg1 ;


@end


#endif