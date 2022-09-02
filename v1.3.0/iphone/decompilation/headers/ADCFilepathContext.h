// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCFILEPATHCONTEXT_H
#define ADCFILEPATHCONTEXT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCFilepathContext : NSObject

@property (readonly, nonatomic) NSURL *fileURL; // ivar: _fileURL
@property (readonly, nonatomic) NSString *filepath; // ivar: _filepath
@property (readonly, nonatomic) NSString *bundlePath; // ivar: _bundlePath
@property (readonly, nonatomic) NSArray *bundleFilenames; // ivar: _bundleFilenames
@property (readonly, nonatomic) NSString *data; // ivar: _data


-(id)initWithDict:(id)arg0 ;
-(id)initWithMessage:(id)arg0 ;
-(BOOL)isValid;
-(BOOL)hasValidDirectory;
-(BOOL)isPathAllowed;


@end


#endif