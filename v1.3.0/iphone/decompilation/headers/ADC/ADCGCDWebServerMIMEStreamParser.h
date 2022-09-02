// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERMIMESTREAMPARSER_H
#define ADCGCDWEBSERVERMIMESTREAMPARSER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADCGCDWebServerMIMEStreamParser;

@interface ADCGCDWebServerMIMEStreamParser : NSObject {
    NSData *_boundary;
    NSString *_defaultcontrolName;
    int _state;
    NSMutableData *_data;
    NSMutableArray *_arguments;
    NSMutableArray *_files;
    NSString *_controlName;
    NSString *_fileName;
    NSString *_contentType;
    NSString *_tmpPath;
    int _tmpFile;
    ADCGCDWebServerMIMEStreamParser *_subParser;
}




-(id)initWithBoundary:(id)arg0 defaultControlName:(id)arg1 arguments:(id)arg2 files:(id)arg3 ;
-(void)dealloc;
-(BOOL)_parseData;
-(BOOL)appendBytes:(*void)arg0 length:(NSUInteger)arg1 ;
-(BOOL)isAtEnd;
+(void)initialize;


@end


#endif