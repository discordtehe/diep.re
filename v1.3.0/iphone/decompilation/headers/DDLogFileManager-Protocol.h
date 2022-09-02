// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol DDLogFileManager

@property NSUInteger maximumNumberOfLogFiles;
@property NSUInteger logFilesDiskQuota;

-(id)logsDirectory;
-(id)unsortedLogFilePaths;
-(id)unsortedLogFileNames;
-(id)unsortedLogFileInfos;
-(id)sortedLogFilePaths;
-(id)sortedLogFileNames;
-(id)sortedLogFileInfos;
-(id)createNewLogFile;
-(NSUInteger)maximumNumberOfLogFiles;
-(void)setMaximumNumberOfLogFiles:(NSUInteger)arg0 ;
-(NSUInteger)logFilesDiskQuota;
-(void)setLogFilesDiskQuota:(NSUInteger)arg0 ;

@optional
-(void)didArchiveLogFile:(id)arg0 ;
-(void)didRollAndArchiveLogFile:(id)arg0 ;
@end

