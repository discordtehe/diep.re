// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSCOMPRESSLOGOPERATION_H
#define ANSCOMPRESSLOGOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ANSCompressLogOperation : NSOperation

@property (retain, nonatomic) NSURL *compressedLogURL; // ivar: _compressedLogURL
@property (retain, nonatomic) NSURL *uncompressedLogURL; // ivar: _uncompressedLogURL


-(id)initWithUncompressedLogURL:(id)arg0 compressedLogURL:(id)arg1 ;
-(void)main;
-(id)compressedURLForUncompressedURL:(id)arg0 ;


@end


#endif