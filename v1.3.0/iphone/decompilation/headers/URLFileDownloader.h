// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef URLFILEDOWNLOADER_H
#define URLFILEDOWNLOADER_H

@protocol URLFileDownloadDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLConnectionDelegate;

@interface URLFileDownloader : NSObject <NSURLConnectionDelegate>

 {
    NSURLResponse *mResponse;
    *__sFILE cStream;
    NSURLConnection *mURLConnection;
    NSURL *mURL;
    NSMutableURLRequest *mURLRequest;
    NSString *mTempSavePath;
    BOOL mUseTempFile;
}


@property (retain) NSObject<URLFileDownloadDelegate> *delegate; // ivar: mDelegate
@property (readonly) NSString *URLString; // ivar: mURLString
@property (readonly) NSString *filename; // ivar: mFilename
@property (readonly) NSString *savePath; // ivar: mSavePath
@property (readonly) BOOL isDownloading; // ivar: mIsDownloading
@property (readonly) float downloadProgress; // ivar: mDownloadProgress
@property (readonly) NSInteger expectedDownloadSize; // ivar: mExpectedDownloadSize
@property (readonly) int totalBytesReceived; // ivar: mTotalBytesReceived
@property NSUInteger cachePolicy; // ivar: mCachePolicy
@property CGFloat timeoutInterval; // ivar: mTimeoutInterval
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)cleanup;
-(void)dealloc;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(BOOL)downloadFile:(id)arg0 baseURL:(id)arg1 savePath:(id)arg2 useTempFile:(BOOL)arg3 ;
-(BOOL)downloadFile:(id)arg0 baseURL:(id)arg1 savePath:(id)arg2 ;
-(BOOL)downloadFile:(id)arg0 savePath:(id)arg1 useTempFile:(BOOL)arg2 ;
-(BOOL)downloadFile:(id)arg0 savePath:(id)arg1 ;
-(void)cancelDownload;
+(id)sharedURLFileDownloader;
+(BOOL)isURLFileDownloaderInitialized;
+(void)releaseSharedURLFileDownloader;


@end


#endif