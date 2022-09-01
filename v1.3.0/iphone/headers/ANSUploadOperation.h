// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSUPLOADOPERATION_H
#define ANSUPLOADOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ANSUploader;

@interface ANSUploadOperation : NSOperation

@property (readonly, nonatomic) ANSUploader *uploader; // ivar: _uploader
@property (readonly, nonatomic) NSURL *answersURL; // ivar: _answersURL
@property (readonly, nonatomic) NSString *apiKey; // ivar: _apiKey
@property (readonly, nonatomic) NSURL *multipartURL; // ivar: _multipartURL
@property (readonly, nonatomic) NSString *multipartMimeBoundary; // ivar: _multipartMimeBoundary


-(id)initWithUploader:(id)arg0 answersURL:(id)arg1 apiKey:(id)arg2 multipartURL:(id)arg3 multipartMimeBoundary:(id)arg4 ;
-(void)main;
-(id)currentTimestampString;


@end


#endif