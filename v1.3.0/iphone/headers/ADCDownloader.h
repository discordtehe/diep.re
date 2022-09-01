// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCDOWNLOADER_H
#define ADCDOWNLOADER_H

@class NSURLSessionDownloadTask;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCDownloader : NSObject {
    id *_completionHandler;
    NSURLSessionDownloadTask *_downloadTask;
}


@property (readonly) NSURLRequest *request; // ivar: _request
@property (readonly) NSURL *destination; // ivar: _destination


-(id)initWithRequest:(id)arg0 httpSession:(id)arg1 destination:(id)arg2 completionHandler:(id)arg3 ;
-(void)start;
-(void)dealloc;


@end


#endif