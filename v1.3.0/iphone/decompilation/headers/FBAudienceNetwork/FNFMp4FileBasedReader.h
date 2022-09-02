// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFMP4FILEBASEDREADER_H
#define FNFMP4FILEBASEDREADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FNFMp4StreamingReader;

@interface FNFMp4FileBasedReader : NSObject <FNFMp4StreamingReader>

 {
    NSFileHandle *_fileHandle;
    NSUInteger _totalLength;
    NSData *_buffer;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFilePath:(id)arg0 ;
-(void)dealloc;
-(char *)bytesAtHead:(NSInteger)arg0 ;
-(void)moveHead:(NSUInteger)arg0 ;
-(BOOL)hasEnoughDataForBytes:(NSUInteger)arg0 ;


@end


#endif