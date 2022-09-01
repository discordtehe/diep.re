// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSPACKAGEREPORTOPERATION_H
#define CLSPACKAGEREPORTOPERATION_H


#import <Foundation/Foundation.h>

@class CLSInternalReport;
@class CLSFileManager;

@interface CLSPackageReportOperation : NSOperation

@property (copy, nonatomic) NSString *finalPath; // ivar: _finalPath
@property (readonly, nonatomic) CLSInternalReport *report; // ivar: _report
@property (readonly, nonatomic) CLSFileManager *fileManager; // ivar: _fileManager


-(id)initWithReport:(id)arg0 fileManager:(id)arg1 ;
-(BOOL)compressData:(id)arg0 toPath:(id)arg1 ;
-(BOOL)writeBytes:(*void)arg0 length:(NSUInteger)arg1 toGZFile:(struct gzFile_s *)arg2 ;
-(id)destinationDirectory;
-(id)packagedPathWithName:(id)arg0 ;
-(void)main;
-(void)encode:(id)arg0 data:(id)arg1 fromPath:(id)arg2 ;


@end


#endif