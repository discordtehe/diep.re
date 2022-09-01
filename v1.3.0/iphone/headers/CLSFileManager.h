// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSFILEMANAGER_H
#define CLSFILEMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSFileManager : NSObject

@property (readonly, nonatomic) NSFileManager *underlyingFileManager; // ivar: _underlyingFileManager
@property (readonly, copy, nonatomic) NSString *rootPath; // ivar: _rootPath
@property (readonly, copy, nonatomic) NSString *structurePath;
@property (readonly, copy, nonatomic) NSString *activePath;
@property (readonly, copy, nonatomic) NSString *processingPath;
@property (readonly, copy, nonatomic) NSString *pendingPath;
@property (readonly, copy, nonatomic) NSString *preparedPath;
@property (readonly, nonatomic) NSArray *activePathContents;
@property (readonly, nonatomic) NSArray *preparedPathContents;
@property (readonly, nonatomic) NSArray *processingPathContents;


-(id)init;
-(BOOL)createDirectoryAtPath:(id)arg0 ;
-(BOOL)removeItemAtPath:(id)arg0 ;
-(BOOL)removeContentsOfDirectoryAtPath:(id)arg0 ;
-(BOOL)moveItemAtPath:(id)arg0 toDirectory:(id)arg1 ;
-(void)enumerateFilesInDirectory:(id)arg0 usingBlock:(id)arg1 ;
-(BOOL)moveItemsFromDirectory:(id)arg0 toDirectory:(id)arg1 ;
-(id)fileSizeAtPath:(id)arg0 ;
-(id)contentsOfDirectory:(id)arg0 ;
-(id)pathNamespace;
-(BOOL)prepareForNewLaunch;
-(id)setupNewPathForExecutionIdentifier:(id)arg0 ;
-(void)removeLegacyDirectories;
-(void)enumerateReportsInProcessingDirectoryUsingBlock:(id)arg0 ;
-(void)enumerateFilesInActiveDirectoryUsingBlock:(id)arg0 ;
-(void)enumerateFilesInPreparedDirectoryUsingBlock:(id)arg0 ;
-(BOOL)moveProcessingContentsToPrepared;
-(BOOL)movePendingToProcessing;
-(BOOL)removeContentsOfProcessingPath;
-(BOOL)removeContentsOfPendingPath;
-(BOOL)removeContentsOfAllPaths;


@end


#endif