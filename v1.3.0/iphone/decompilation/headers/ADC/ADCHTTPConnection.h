// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCHTTPCONNECTION_H
#define ADCHTTPCONNECTION_H

@class NSURLSessionDataTask;

#import <Foundation/Foundation.h>


@interface ADCHTTPConnection : NSObject {
    id *_completionHandler;
}


@property (readonly) NSURLRequest *request; // ivar: _request
@property (readonly) NSURLSessionDataTask *dataTask; // ivar: _dataTask
@property (readonly) BOOL followRedirects; // ivar: _followRedirects


-(id)initWithRequest:(id)arg0 httpSession:(id)arg1 followRedirects:(BOOL)arg2 completionHandler:(id)arg3 ;
-(void)start;
-(void)dealloc;


@end


#endif