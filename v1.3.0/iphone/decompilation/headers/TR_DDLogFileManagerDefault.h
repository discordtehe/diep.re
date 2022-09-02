// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOGFILEMANAGERDEFAULT_H
#define TR_DDLOGFILEMANAGERDEFAULT_H


#import <Foundation/Foundation.h>

@protocol DDLogFileManager;

@interface TR_DDLogFileManagerDefault : NSObject <DDLogFileManager>

 {
    NSString *_logsDirectory;
    NSString *_defaultFileProtectionLevel;
}


@property (readonly, copy) NSString *newLogFileName;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property NSUInteger maximumNumberOfLogFiles; // ivar: _maximumNumberOfLogFiles
@property NSUInteger logFilesDiskQuota; // ivar: _logFilesDiskQuota


-(id)init;
-(id)initWithLogsDirectory:(id)arg0 ;
-(id)initWithLogsDirectory:(id)arg0 defaultFileProtectionLevel:(id)arg1 ;
-(void)dealloc;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)deleteOldLogFiles;
-(id)defaultLogsDirectory;
-(id)logsDirectory;
-(BOOL)isLogFile:(id)arg0 ;
-(id)logFileDateFormatter;
-(id)unsortedLogFilePaths;
-(id)unsortedLogFileNames;
-(id)unsortedLogFileInfos;
-(id)sortedLogFilePaths;
-(id)sortedLogFileNames;
-(id)sortedLogFileInfos;
-(id)createNewLogFile;
-(id)applicationName;
+(BOOL)automaticallyNotifiesObserversForKey:(id)arg0 ;


@end


#endif