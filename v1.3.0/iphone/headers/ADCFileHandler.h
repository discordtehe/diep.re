// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCFILEHANDLER_H
#define ADCFILEHANDLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCFileHandler : NSObject {
    NSURL *_fileURL;
    NSString *_filepath;
    NSFileHandle *_readHandle;
    NSFileHandle *_writeHandle;
}


@property (nonatomic) NSInteger readingChunkSize; // ivar: _readingChunkSize


-(id)initWithFilepath:(id)arg0 ;
-(id)initWithFileURL:(id)arg0 ;
-(struct ? )seekToRegex:(id)arg0 ;
-(struct ? )locationAndLengthOfRegex:(id)arg0 ;
-(NSInteger)seekToSubstring:(id)arg0 ;
-(NSInteger)locationOfSubstring:(id)arg0 ;
-(BOOL)seekToLocation:(NSInteger)arg0 ;
-(id)readToEndOfFile;
-(BOOL)writeDataString:(id)arg0 atLocation:(NSInteger)arg1 ;
-(BOOL)truncateAtLocation:(NSInteger)arg0 ;
-(void)resetReadHandle;
-(void)resetWriteHandle;
-(void)finish;


@end


#endif