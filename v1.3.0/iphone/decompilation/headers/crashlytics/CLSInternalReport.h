// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSINTERNALREPORT_H
#define CLSINTERNALREPORT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSInternalReport : NSObject {
    NSArray *_metadataSections;
}


@property (readonly, copy, nonatomic) NSString *directoryName;
@property (copy, nonatomic) NSString *path; // ivar: _path
@property (readonly, nonatomic) BOOL needsToBeSubmitted;
@property (readonly, copy, nonatomic) NSString *binaryImagePath;
@property (readonly, copy, nonatomic) NSString *metadataPath;
@property (readonly, copy, nonatomic) NSString *APIKey;
@property (readonly, nonatomic) BOOL isCrash;
@property (readonly, copy, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, copy, nonatomic) NSDictionary *customKeys;
@property (readonly, copy, nonatomic) NSString *bundleVersion;
@property (readonly, copy, nonatomic) NSString *bundleShortVersionString;
@property (readonly, copy, nonatomic) NSDate *dateCreated;
@property (readonly, copy, nonatomic) NSDate *crashedOnDate;
@property (readonly, copy, nonatomic) NSString *OSVersion;
@property (readonly, copy, nonatomic) NSString *OSBuildVersion;


-(id)initWithPath:(id)arg0 executionIdentifier:(id)arg1 ;
-(id)initWithPath:(id)arg0 ;
-(id)pathForContentFile:(id)arg0 ;
-(id)crashFilenames;
-(BOOL)checkExistenceOfAtLeastOnceFileInArray:(id)arg0 ;
-(void)enumerateSymbolicatableFilesInContent:(id)arg0 ;
-(id)metadataSections;
-(id)timeFromCrashContentFile:(id)arg0 sectionName:(id)arg1 ;
+(id)reportWithPath:(id)arg0 ;
+(id)readCLSFileAtPath:(id)arg0 ;


@end


#endif