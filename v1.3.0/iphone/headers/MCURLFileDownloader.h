// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCURLFILEDOWNLOADER_H
#define MCURLFILEDOWNLOADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLConnectionDelegate;
@protocol MCURLFileDownloadDelegate;
@protocol MCBundleServerPersistencyDelegate;

@interface MCURLFileDownloader : NSObject <NSURLConnectionDelegate>

 {
    NSURLResponse *_response;
    *__sFILE _cStream;
    NSURLConnection *_URLConnection;
    NSURL *_URL;
    NSMutableURLRequest *_URLRequest;
    NSString *_tempSavePath;
    BOOL _useTempFile;
    NSTimer *_retryTimer;
}


@property (retain, nonatomic) NSObject<MCURLFileDownloadDelegate> *delegate; // ivar: _delegate
@property (readonly) NSObject<MCBundleServerPersistencyDelegate> *persistencyDelegate; // ivar: _persistencyDelegate
@property (readonly) NSString *URLString; // ivar: _URLString
@property (readonly) NSString *filename; // ivar: _filename
@property (readonly) NSString *savePath; // ivar: _savePath
@property (readonly) NSString *etag; // ivar: _etag
@property (readonly) int ID; // ivar: _ID
@property (readonly) BOOL isDownloading; // ivar: _isDownloading
@property (readonly) float downloadProgress; // ivar: _downloadProgress
@property (readonly) int expectedDownloadSize; // ivar: _expectedDownloadSize
@property (readonly) int totalBytesReceived; // ivar: _totalBytesReceived
@property (readonly) int downloadAttempt; // ivar: _downloadAttempt
@property NSUInteger cachePolicy; // ivar: _cachePolicy
@property CGFloat timeoutInterval; // ivar: _timeoutInterval
@property (retain) NSArray *retryTimes; // ivar: _retryTimes
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setupCommonValues;
-(id)init;
-(id)initWithPersistenceDelegate:(id)arg0 ;
-(id)initWithPersistenceDelegate:(id)arg0 andID:(int)arg1 ;
-(void)cleanup;
-(void)dealloc;
-(CGFloat)getNextRetryTime;
-(void)failDownloadWithError:(id)arg0 ;
-(id)tempFile;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(id)downloadFile:(id)arg0 baseURL:(id)arg1 savePath:(id)arg2 ;
-(id)downloadFile:(id)arg0 baseURL:(id)arg1 savePath:(id)arg2 useTempFile:(BOOL)arg3 ;
-(id)downloadFile:(id)arg0 savePath:(id)arg1 ;
-(void)cancelDownload;
-(void)retry:(id)arg0 ;
-(id)toDictionary;
-(id)fromDictionary:(id)arg0 ;
+(id)fileDownloaderWithPersistenceDelegate:(id)arg0 ;
+(id)fileDownloaderWithPersistenceDelegate:(id)arg0 andID:(int)arg1 ;


@end


#endif