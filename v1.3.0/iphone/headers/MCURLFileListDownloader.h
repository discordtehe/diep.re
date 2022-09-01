// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCURLFILELISTDOWNLOADER_H
#define MCURLFILELISTDOWNLOADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCURLFileDownloadDelegate;
@protocol MCBundleServerPersistencyDelegate;
@protocol URLFileListDownloadDelegate;

@interface MCURLFileListDownloader : NSObject <MCURLFileDownloadDelegate>

 {
    BOOL _canDownload;
    int _fileDownloadersToKill;
    id<MCBundleServerPersistencyDelegate> *_persistencyDelegate;
    NSMutableArray *_filesToDownload;
    NSMutableDictionary *_downloadErrors;
    int _currentDownloadIndex;
    NSString *_currentDownloadFilePath;
}


@property (retain, nonatomic) NSObject<URLFileListDownloadDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSArray *fileDownloaders; // ivar: _fileDownloaders
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(int)busyDownloadersCount;
-(BOOL)downloading;
-(id)downloadErrors;
-(id)remainingFilesToDownload;
-(id)remainingFileNamesToDownload;
-(id)addNewDownloader;
-(id)addNewDownloader:(int)arg0 ;
-(id)removeDownloader:(int)arg0 ;
-(void)setParallelDownloadersCount:(int)arg0 ;
-(int)parallelDownloadersCount;
-(id)initWithPersistencyDelegate:(id)arg0 ;
-(id)initWithPersistencyDelegate:(id)arg0 withParallelDownloadersCount:(int)arg1 ;
-(void)dealloc;
-(void)detach;
-(void)cleanup;
-(void)saveIndexState;
-(void)start;
-(id)currentFile;
-(id)getFreeDownloader;
-(BOOL)startFileDownload;
-(void)tick;
-(void)downloadFileAt:(id)arg0 ;
-(void)downloadFileAt:(id)arg0 intoLocalPath:(id)arg1 ;
-(void)reportError:(id)arg0 forUrlString:(id)arg1 ;
-(void)downloadComplete:(id)arg0 ;
-(void)downloadFailed:(id)arg0 withError:(id)arg1 ;
-(void)download:(id)arg0 withProgress:(float)arg1 ;
-(BOOL)shouldRetryDownload:(id)arg0 forError:(id)arg1 ;
-(BOOL)shouldUseTempFile:(id)arg0 ;
-(void)cancelDownload;
-(id)downloaderResponsibleFor:(id)arg0 ;
-(id)saveDownloadersState:(int)arg0 ;
-(id)saveDownloadersState;
-(id)toDictionary;
-(id)fromDictionary:(id)arg0 ;
+(id)fileListDownloaderWithPersistencyDelegate:(id)arg0 ;
+(id)fileListDownloaderWithPersistencyDelegate:(id)arg0 withParallelDownloadersCount:(int)arg1 ;


@end


#endif