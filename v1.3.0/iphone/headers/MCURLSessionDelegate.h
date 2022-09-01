// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCURLSESSIONDELEGATE_H
#define MCURLSESSIONDELEGATE_H


#import <Foundation/Foundation.h>

@protocol NSURLSessionDelegate;
@protocol NSURLSessionTaskDelegate;
@protocol NSURLSessionDataDelegate;
@protocol NSURLSessionDownloadDelegate;

@interface MCURLSessionDelegate : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDataDelegate, NSURLSessionDownloadDelegate>

 {
    mutex _connectionsMutex;
    unordered_map<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple>, std::__1::hash<unsigned long>, std::__1::equal_to<unsigned long>, std::__1::allocator<std::__1::pair<const unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > > _connections;
    NSURLSession *_session;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithConfiguration:(id)arg0 ;
-(void)dealloc;
-(?)getConnection;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveResponse:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveData:(id)arg2 ;
-(void)URLSession:(id)arg0 downloadTask:(id)arg1 didWriteData:(NSInteger)arg2 totalBytesWritten:(NSInteger)arg3 totalBytesExpectedToWrite:(NSInteger)arg4 ;
-(void)URLSession:(id)arg0 downloadTask:(id)arg1 didFinishDownloadingToURL:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;
-(void)URLSessionDidFinishEventsForBackgroundURLSession:(id)arg0 ;
-(?)dataTaskWithRequestforHttpConnection;
-(?)downloadTaskWithRequestforHttpConnection;


@end


#endif