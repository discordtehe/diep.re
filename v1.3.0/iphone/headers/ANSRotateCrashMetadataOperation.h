// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSROTATECRASHMETADATAOPERATION_H
#define ANSROTATECRASHMETADATAOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ANSMetadata;
@class ANSCrashMetadata;

@interface ANSRotateCrashMetadataOperation : NSOperation

@property (retain, nonatomic) NSURL *crashMetadataURL; // ivar: _crashMetadataURL
@property (retain, nonatomic) ANSMetadata *currentMetadata; // ivar: _currentMetadata
@property (retain, nonatomic) ANSCrashMetadata *crashMetadata; // ivar: _crashMetadata
@property (retain, nonatomic) NSDictionary *currentMetadataDictionary; // ivar: _currentMetadataDictionary


-(id)initWithCrashMetadataURL:(id)arg0 currentMetadata:(id)arg1 ;
-(void)main;


@end


#endif