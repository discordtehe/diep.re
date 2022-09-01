// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSPACKAGELOGOPERATION_H
#define ANSPACKAGELOGOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ANSPackageLogOperation : NSOperation

@property (retain, nonatomic) NSURL *packagedLogURL; // ivar: _packagedLogURL
@property (retain, nonatomic) NSURL *compressedLogURL; // ivar: _compressedLogURL
@property (retain, nonatomic) NSString *multipartMimeBoundary; // ivar: _multipartMimeBoundary


-(id)initWithCompressedLogURL:(id)arg0 packagedLogURL:(id)arg1 multipartMimeBoundary:(id)arg2 ;
-(void)main;
-(id)multipartURLForCompressedURL:(id)arg0 withBoundary:(id)arg1 ;


@end


#endif