// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLELINEREADER_H
#define VUNGLELINEREADER_H


#import <Foundation/Foundation.h>


@interface VungleLineReader : NSObject

@property (copy, nonatomic) NSString *filePath; // ivar: _filePath
@property (retain, nonatomic) NSFileHandle *fileHandle; // ivar: _fileHandle
@property (nonatomic) NSUInteger currentOffset; // ivar: _currentOffset
@property (nonatomic) NSUInteger totalFileLength; // ivar: _totalFileLength
@property (copy, nonatomic) NSString *lineDelimiter; // ivar: _lineDelimiter
@property (nonatomic) NSUInteger chunkSize; // ivar: _chunkSize


-(id)initWithFilePath:(id)arg0 ;
-(void)dealloc;
-(id)readLine;
-(id)readTrimmedLine;
-(void)enumerateLinesUsingBlock:(id)arg0 ;


@end


#endif